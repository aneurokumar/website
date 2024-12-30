---
public: true
title: 
tags:
  - css
created: 26-12-2024
last-modified: 26-12-2024
---
**Related:** [[./Programming MOC|Programming MOC]], CSS Lecture 2

---

> **Summary**
> CSS (Cascading Style Sheets) can be used in 3 ways for styling HTML: in-line style for specific elements, internal styling for staying in the same file, and external styling for applying style across whole elements/pages

## In-line styling
This is used to apply styles to specific blocks of html, using the `style= "property: value;"` attribute in the same line. Use it at the opening of the html tag to apply to that html element. Used with

You can have as many property-value pairs as you want. Separate each with a colon.

Not recommended for consistent styling because there's a lot of repetition! 

In-styling has highest priority, so it can be used to override most rules in internal/external style sheets.

**example 1:**
```html
<h1 style="color: red; font-size: 40px;">Hello World</h1>
```

**example 2:**
```html
<html>
<body style="background-color:black;">

<h1 style="color:white;padding:30px;">Hostinger Tutoriels</h1>
<p style="color:white;">Quelque chose d'utile ici.</p>

</body>
</html>
```

**Example of override:**
Assume we have two paragraph texts with inline styling set to `red` and internal styling set to `green` -- the CSS from the inline styles will override the CSS from the internal styling, so both paragraphs will be `red`.

```html
<html>
  <head>
      <title>Hello World</title>
      <style>
       p {
           color: green;
       }
   </style>
  </head>

  <body>
     <p style="color: red;">Paragraph one is red.</p>
     <p style="color: red;">Paragraph two is also red.</p>
  </body>
</html>
```

## Internal style sheets
For internal (or integrated) style sheets, use `<style>`  inside the `<head>` element, and use curly brackets to define all the property-value pairs. 

Internal style sheets are in the same file as the HTML code, and useful if one particular page must be styled. You can use [[class and ID selectors|class and ID selectors]] for this. 

example
```html
<html>
<head>
<style type="text/css">

body {
    background-color: blue;
}
h1 {
    color: red;
    padding: 60px;
}
</style>
</head>

<body>
</body>
</html>
```

## External style sheets
In this method, you link your html file with a separate .css file. When the html file is transmitted onto a website, it will take all the style rules noted in the .css file. 

This is useful to define styles across multiple pages/site-wide

First, create a .css file
```css
.xleftcol {
   float: left;
   width: 33%;
   background:#809900;
}
.xmiddlecol {
   float: left;
   width: 34%;
   background:#eff2df;
}
```

Then in your html file, link the file using `link rel=`, `type=`, and `href=`. Place this link af

```html
<html>
<head>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>
</body>
</html>

```
## references/links
* [Inline Style in HTML – CSS Inline Styles](https://www.freecodecamp.org/news/inline-style-in-html/)
* [Qu’est ce qu’un Style CSS Externe, Interne et Inline ?](https://www.hostinger.fr/tutoriels/style-css#CSS_inline)
