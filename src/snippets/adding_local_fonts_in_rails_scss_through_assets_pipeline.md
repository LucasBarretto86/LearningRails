# Adding local fonts in rails stylesheet scss through assets pipeline

- [Adding local fonts in rails stylesheet scss through assets pipeline](#adding-local-fonts-in-rails-stylesheet-scss-through-assets-pipeline)
  - [Configuring assets initializer](#configuring-assets-initializer)
  - [App assets tree](#app-assets-tree)
  - [Including fonts into stylesheet](#including-fonts-into-stylesheet)

## Configuring assets initializer

```rb
## initializers/assets.rb
...

Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")
```

## App assets tree

```tree
app/assets/
├── config
│   └── manifest.js
├── fonts
│   ├── manjari-bold.ttf
│   ├── manjari-bold.woff
│   ├── manjari-bold.woff2
│   ├── manjari-regular.ttf
│   ├── manjari-regular.woff
│   ├── manjari-regular.woff2
│   ├── manjari-thin.ttf
│   ├── manjari-thin.woff
│   ├── manjari-thin.woff2
│   ├── open-sans-bold.ttf
│   ├── open-sans-bold.woff
│   ├── open-sans-bold.woff2
│   ├── open-sans-extra-bold.ttf
│   ├── open-sans-extra-bold.woff
│   ├── open-sans-extra-bold.woff2
│   ├── open-sans-regular.ttf
│   ├── open-sans-regular.woff
│   └── open-sans-regular.woff2
├── images
├── javascripts
│   ├── application.js
│   ├── cable.js
│   ├── channels
└── stylesheets
    └── application.scss
```

## Including fonts into stylesheet

```scss
// application.scss
@mixin font-face($font-family, $font-file, $weight, $style) {
  @font-face {
    font-family: $font-family;
    src: asset-url($font-file + ".woff") format("woff"),
    asset-url($font-file + ".ttf") format("truetype"),
    asset-url($font-file + ".woff2") format("woff");
    font-weight: $weight;
    font-style: $style;
  }
}

@include font-face("Manjari", "manjari-thin", 300, "normal");
@include font-face("Manjari", "manjari-regular", 400, "normal");
@include font-face("Manjari", "manjari-bold", 600, "normal");
@include font-face("Open Sans", "open-sans-regular", 400, "normal");
@include font-face("Open Sans", "open-sans-bold", 600, "normal");
@include font-face("Open Sans", "open-sans-extra-bold", 800, "normal");
```
