# Colors 

> All colors classes starts with .cv-

You then add which color you want to use:

* p - primary
* g - grey
* s - secondary
* button - button color (set to primary as default)
* alert
* success
* fail
* t - tertiary
* w - white

There are then a series of modifiers you can add to tint or shade:

* 1, 2 - darken the color
* -1, -2, -3 - lighten the color

You can then add what you are targeting:

* -text
* -bg
* -border
* -grad

So a fully built up class would be something like:

``` css
.cv-g-3-bg  /*A very light grey background*/
```
The bg classes already have a color contrast function built into them so they should give a text color that is easily visible on that background.

Two other variables are available to affect how the skin looks:

* $grey-mix
> this affects the amount of the primary colour which is mixed in to create the grey variables… it’s set around 95% (5% of primary) as default,  so decrease that percentage for a greater mix of the primary, decrease for the opposite.

* $color-adjust-ratio 
> this controls the difference between the lighter/darker versions of the colours…. Set to 40% as default, increase for a greater shift between colors, decrease for the opposite.