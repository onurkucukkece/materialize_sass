# MaterializeSass

https://hex.pm/packages/materialize_sass

A modern responsive front-end framework based on Material Design

http://materializecss.com/

## Installation

This module requires Elixir / Phoenix 1.3 or newer.

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `materialize_sass` to your list of dependencies in `mix.exs`:


```elixir
# mix.exs
def deps do
  [
    {:materialize_sass, "~> 0.1.3"}
  ]
end
```
Load dependencies

    $ mix deps.get
    
Initialize materialize_sass

    $ mix materialize.init
    
Add materialize JS to ```assets/brunch-config.js``` and make sure sass is enabled in plugins config set. 
    
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
    ...
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
Finally include javascript in app.html after script tag for app.js

```
<!-- lib/myapp_web/templates/layout/app.html.eex -->

<script src="#{static_path(@conn, "/js/app.js")}"></script>
<script src="#{static_path(@conn, "/js/materialize.min.js")}"></script>
```

Special thanks to @mistim for inspring this module from https://github.com/mistim/ex_materialize

## Todo
⋅⋅* Add tests
⋅⋅* Update brunch-config on initialization
⋅⋅* css / scss option


Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/materialize_sass](https://hexdocs.pm/materialize_sass).

