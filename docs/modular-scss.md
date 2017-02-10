# Modular SCSS

## Fixed Modal header

```
<div class="fixed-modal-header">
    <h5 class="modal-title">
        <span class="heading title">Title here</span>
    </h5>
    <div class="formButtons">
    <!-- Split button -->
      <button class="button small split" data-dropdown="">Options
        <span></span>
      </button>
    <!-- End split button -->
      <ul class="f-dropdown right" data-dropdown-content="" id="">
        <li>
            <a class="">Opt1</a>
        </li>
        <li>
          <a class="">Opt2</a>
        </li>
      </ul>
      <button class="small" type="button">Button 1</button>
      <button class="small" type="button">Button 2</button>
      <a class="close-withPopup close-reveal-modal"></a>
    </div>
</div>
```