# Template Modules

## Fixed Modal header

```html
<div class="fixed-modal-header">
    <h5 class="modal-title">
        <span class="heading title">Title here</span>
    </h5>
    <div class="formButtons">
      <button class="small" type="button">Button 1</button>
      <button class="small" type="button">Button 2</button>
      <a class="close-withPopup close-reveal-modal"></a>
    </div>
</div>
```

## Split button

```html
 <button class="button small split" data-dropdown="">Options
    <span></span>
</button>
<ul class="f-dropdown right" data-dropdown-content="" id="">
    <li>
        <a class="">Opt1</a>
    </li>
    <li>
        <a class="">Opt2</a>
    </li>
</ul>
```

## Empty list centering with text & icon

> If you want this snippet to work make sure the parent of this code has the class ```.flex .flex-auto```, or it won't work.

```html
<div class="flex flex-auto justify-center items-center">
        <div class="flex flex-column">
        <span class="empty-list-icon cv-g-text ma-b-1">
            <i class="insert-your-icon-class-here"></i>
        </span>
        <span class="empty-list-text cv-g-text ma-b-half">Insert main text here</span>
        <span class="empty-list-text cv-g-text">Insert secondary text here</span>
    </div>
    </div>
```