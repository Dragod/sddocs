# Padding / Margin

## Class names

* .pa / .ma for padding or margin, then add a position
* l - left
* r - right
* t - top
* b - bottom
* lr - left / right
* tb - top / bottom
* all - all

## Unit

* qtr - quarter
* half - half
* 1 - 1 rem
* 2 - 2 rem
* 3 - 3 rem
* 4 - 4 rem

> All the classes above are measured in rem.

```html
<div class="pa-l-qtr"> <!-- Gives 0.25 rem on left side -->

<div class="ma-all-1"> <!-- Gives a 1 rem margin all around -->
```

# Round / Square Elements

These should be used wherever we have a rounded or square element for consistency across the site.

> To build up the class, use ```.rnd-``` or ```.sqr-``` followed by the size:

* tiny
* small
* medium
* large
* xlarge
* xxlarge

You can chain a basic color glass to this (i.e. ```.cv-p```) and it will make the background this color, and the text a complimentary color.

Also, adding ```.ghost``` and a color class to these elements will make it a see through element with the border and font color specified.

## Notes on these classes:

* If there is an icon in them, just use an ```<i>``` tag and the font-awsome/icomoon class - it will always center up.

* Background images are set to cover on all elements.

* There are also 2 classes of ```.rnd-scale``` and ```.sqr-scale``` that give you an element that will fill it’s container - but anything within these will need to be absolutely positioned as it uses the padding-bottom hack

# Typography

> Some basic typography classes:

* ```.quiet``` - lightens text

* ```.loud``` - darkens and bolds text (font-weight 600)

# Mixin

## Longhand borders

* This mixin will help create longhand css borders to help workout colour skinning. To use it just call ```@include border(1px, solid, #fff)```.

> Example:  4 borders

```css
border-width: 1px;
border-color: #fff;
border-style: solid;
```

if you don't need all 4 borders, you need to pass the paramaeter to the mixin. Valid parameter are top,right,bottom and left. Example: ```@include border(1px, solid, #fff, left)```

> Example: 1 border

```css
border-left-width: 1px;
border-left-color: #fff;
border-left-style: solid;
```





