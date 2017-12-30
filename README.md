# MaterializeSass

A modern responsive front-end framework based on Material Design

http://materializecss.com/

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `materialize_sass` to your list of dependencies in `mix.exs`:

This module requires Elixir / Phoenix 1.3 or newer.

Add it to your project dependencies.


```elixir
# mix.exs
def deps do
  [
    {:materialize_sass, "~> 0.1.0"}
  ]
end
```
Load dependencies

    $ mix deps.get
    
Initialize materialize_sass

    $ mix materialize.init
    
Add materialize files to ```assets/brunch-config.js``` and make sure sass is enabled in plugins config set. 
    
```elixir

exports.config = {
  // See http://brunch.io/#documentation for docs.
  files: {
    javascripts: {
      joinTo: {
        "js/app.js": /^(js)|(node_modules)/,
        "js/materialize.min.js": ["vendor/materialize/js/materialize.min.js"]
      }
    },
    stylesheets: {
      joinTo: {
        "css/app.css": /^(css)/,
        "css/materialize.css": ["vendor/materialize/css/materialize.css"],
      }
    },
    templates: {
      joinTo: "js/app.js"
    }
  },

  // Enable sass
  plugins: {
    ...
    sass: {
      mode: "native" // This is the important part!
    },
    ...
  },
  ...
```
Import materialize stylesheet library at the top in app.scss

```
# assets/css/app.scss

@import "vendor/materialize/sass/materialize";
```
To customize globals, for example colors;

```
@import "vendor/materialize/sass/components/color";

$primary-color:color('blue-grey', 'lighten-1') !default;
$error-color:color('red', 'base') !default;
$link-color:color("lime", "darken-2") !default;

@import "vendor/materialize/sass/materialize";

body {
  background-color: #fcfcfc;
  h1{
    font-size: 2.2rem;
  }
  a:hover{
    opacity: 0.5;
    filter: alpha(opacity=50);
  }
}
```



Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/materialize_sass](https://hexdocs.pm/materialize_sass).

