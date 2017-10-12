# Phoenix Elm Webpack

This is a basic starter that includes
 * Phoenix Framework 
 * Elm 
 * Elm Css
 * Built with Webpack
 
 Main File Locations. 
  * `/lib`  : Phoenix src files
  * `/assets/Elm`  : Elm src files  (Elm package and Elm make should always be run from `/assets`)
  * `/assets/ElmCss` : Elm Css src files
  * `/assets/js/app.js` : Entry point for Webpack
  * `/assets/css` : Can put static css files here (like bootstrap etc)

## Starting the server

To start your Phoenix server with all the Elm and Webpack goodness:

  * Install dependencies with `mix deps.get`
  * Configure your `config/dev.exs` for your environment
  * Create and migrate your database with `mix ecto.create`
  * Install Node.js dependencies with `npm install` 
  * Install Elm dependencies with `cd assets && elm-make`  
  * Start Phoenix endpoint with `mix phx.server` (After you go back to the root folder `cd ..`)

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? 

 * Setup your phoenix config files https://hexdocs.pm/phoenix/deployment.html#content
 * run `npm run deploy` to build your static js and css files
 * run `mix phx.digest`
 * run `PORT=4005 MIX_ENV=prod mix phx.server`

## Phoenix

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
  
## Elm
 * Official Website: http://http://elm-lang.org/
 * Docs/Guids: http://elm-lang.org/docs
 
## Webpack
 * Official Website: https://webpack.js.org/
 * Docs : https://webpack.js.org/concepts/
