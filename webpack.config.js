var path = require("path");
var elmSource = __dirname + "/assets"
var webpack = require('webpack');
const ExtractTextPlugin = require("extract-text-webpack-plugin");
const CopyWebpackPlugin = require("copy-webpack-plugin");
var publicPath = 'http://localhost:4001/'

var env = process.env.MIX_ENV || "dev";
var isDev = env !== "prod";

module.exports = {
  context : __dirname+"/assets",
  entry: ["./js/app.js"],

  output: {
    path: path.resolve(__dirname, "priv/static"),
    filename: "js/app.js",
    publicPath: publicPath
  },

  plugins: isDev ? [
    new CopyWebpackPlugin([{
      from: "./static",
      to: path.resolve(__dirname, "./priv/static")
    }])
  ] : [
      new CopyWebpackPlugin([{
        from: "./static",
        to: path.resolve(__dirname, "./priv/static")
      }]),
      new webpack.optimize.UglifyJsPlugin({
        compress: { warnings: false }
      }),
      //    new webpack.DefinePlugin({
      //      VERSION: JSON.stringify(gitVersion.version())
      //      , WEBSOCKETSVR: JSON.stringify("ws://10.10.1.200:4500/socket")
      //    }),
      new ExtractTextPlugin('css/app.css',{ allChunks: true})
    ],


  module: {
    loaders: [
      {
        test: /\.elm$/,
        exclude: [/node_modules/,/elmCss/],
        use: isDev ? ['elm-hot-loader',
          'elm-webpack-loader?verbose=true&warn=false&cwd=' + elmSource + '&debug=true']
          : ['elm-hot-loader',
            'elm-webpack-loader?verbose=true&warn=false&cwd=' + elmSource + '&debug=false']
      },
      {
        test: /\.css$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: isDev ? [
          { loader: 'style-loader' },
          { loader: 'css-loader' }
          
        ] : ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: ['css-loader']
        })
      },
      {
        test: [/stylesheets\.elm$/],
        exclude: [/elm-stuff/, /node_modules/],
        use: isDev ? [
          { loader: 'style-loader' },
          { loader: 'css-loader' },
          { loader: 'elm-css-webpack-loader?cwd=' + elmSource }
        ] : ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: ['css-loader', 'elm-css-webpack-loader?cwd=' + elmSource]
        })
      }
    ],
    noParse: /^((?!stylesheets).)*\.elm.*$/

  },

  devServer: {
    hot: true,
    inline: true,
    contentBase: path.resolve(__dirname) + "/priv/static",
    publicPath: publicPath,
    port: 4001,
    headers: {
      "Access-Control-Allow-Origin": "*",
    }

  }
}