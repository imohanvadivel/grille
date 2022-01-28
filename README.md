# Grille
Grille is a simple CSS Grid system for building flexible web applications. Grille is pure CSS doesn't involve any javascript. Grille can be used along with any javascript framework. This project is a fork of [Raster](https://github.com/rsms/raster) with simpler semantic syntax and some additional features.

> Note: This documentation is WIP

## Install

This repository is distributed with npm and yarn. You can get this repo by

```bash
npm install grilles 
```

After installation, you can import ```grille.css``` in your main CSS file

```css
@import "grilles/grille.css";
```

You can also get ```grille.css``` directly from cdn by using this `link` tag

```html
<link rel="stylesheet" href="https://unpkg.com/grilles@1.x/grille.css">
```


## Grid

Adding the ```grid``` class to an element makes them a grid container. By default, the grid container has ```4``` columns. <br />
The ```columns="<count>"``` attribute can be used to specify column count. At maximum ```30``` columns can be created. 

For example, to make an 8 column grid, the following markup can be used.

```html
<main class="grid" columns="8">
  ...
</main>
```
All the immediate children of the grid container act as the grid child. The following strategies can be used to position them.

### Positioning Grid Child
- ```span="row"``` spans across the entire row <br/>
- ```span="3"``` starts from next column and spans across three columns <br/>
- ```span="4-7"``` starts from 4th and spans till 7th column <br/>
- ```span="2.."``` starts from 2nd and spans till the last column <br/>
- ```span="2+3"``` starts from 2nd and spans next three columns

for example, the template for a simple blog may look like
```html
<!-- Grid Container with 8 columns -->
<main class="grid" columns="8"> 
  
  <!-- header spans across the entire row -->
  <header span="row">...</header> 
  
  <!-- nav starts from 1st column and spans next two column -->
  <nav span="1+2">...</nav>

  <!-- article starts from next column and spans across next 4 column -->
  <article span="4">...</article> 

  <!-- aside starts from 7th column and spans till last column -->
  <aside span="7..">...</aside> 
  
  <!-- footer spans across the entire row -->
  <footer span="row">...</footer>
</main>
```
## Fonts
Grille comes with a great set of fonts that are designed explicitly for user interfaces. They work well even in low-resolution displays. They are licensed under "SIL Open Font License" and served through [Google font API](https://developers.google.com/fonts/docs/css2).

```
Sans Font → Inter
Mono Font → JetBrains Mono, Roboto Mono
```

The fonts automatically get switched to their variable version if the browser supports them. Further, the custom font can be used by overriding the following properties.


```css
  --sansFont: helvetica, sans-serif;
  --monoFont: courier, monospace;
```


The browser's default font size (usually it's 16px) is taken into account. Changing the default font size will cause the UI to be scaled accordingly, such that it will be accessible for the users. But for this to happen seamlessly, every UI element should be sized in relative units, based on font size like rem, em, ex.<br/>

Further, the font size can be customized by overriding unitless values for the following properties.

``` css
  --baseSansFontSize: 14;
  --baseMonoFontSize: 14;
```
