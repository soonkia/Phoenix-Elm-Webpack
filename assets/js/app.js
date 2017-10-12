'use strict';
require('../css/app.css');
require('../elmCss/stylesheets.elm');

//var version=VERSION;

var Elm = require('../elm/Main.elm');
var mountNode = document.getElementById('elm_target');

// .embed() can take an optional second argument. This would be an object describing the data we need to start a program, i.e. a userID or some token
var app = Elm.Main.embed(mountNode);
