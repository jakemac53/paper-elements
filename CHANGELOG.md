## 0.6.0
  * Updated to match JS version 0.5.1.
    * **New Element** `paper-spinner` is a new element that provides a material
      design loading spinner.
    * **New Element** `paper-dropdown` is a new material design styled dropdown.
    * **Breaking Change** `paper-input` has had a lot of changes. Namely, it no
      longer supports the `multiline` property. There are two new elements which
      can be used to duplicate the old functionality, `paper-input-decorator`
      and `paper-autogrow-textarea`.
    * **Breaking Change** `paper-item` removed `icon`, `iconSrc`, and `label`
      attributes. Use nested DOM for label content.
    * **Breaking Change** `paper-shadow` is a container instead of targeting
      another element.
      * Use `setZ()` to set the depth of the shadow instead of assigning the `z`
        property.
      * The `z` attribute now uses a one time binding.
    * **Breaking Change** `paper-dialog` was broken into two elements.
      * `paper-dialog` for a plain dialog.
      * `paper-action-dialog` for a dialog with scrollable body and buttons.

## 0.5.0
  * Updated to match JavaScript version 0.4.2. This includes some breaking
    changes in elements APIs. For example, `PaperButton.raisedButton` was
    renamed to `PaperButton.raised`.
  * removed unnecessary files (README from the paper element repos)

## 0.4.2
  * Updated to use polymer 0.15.1 (Dart interop support is loaded automatically
    now.)

## 0.4.1

* Update `paper_elements_config.yaml` with the new `deletion_patterns` option.
  This deletes a lot of cruft code from `bower update`.

## 0.4.0

* Update elements to the 0.4.1 JavaScript versions.
  * **Breaking Change** `paper-dropdown` was renamed `paper-dropdown-menu`.

## 0.3.0+1

* Upgrade `custom_element_apigen` to a real dependency as its required in the
  wrappers.

## 0.3.0

* Update all elements so they can be built from code using a normal factory
  constructor, such as `new PaperInput()`. It is still necessary however to
  include the html import for each element you wish to create this way.
* Updated library name on each element to say `paper_elements` instead of
  `core_elements`.

## 0.2.0

* Update all elements to the 0.4.0 js version.
  * **NEW** Added paper_dropdown element.
  * Removed paper_menu_button_overlay.
* Upgraded polymer version constraint to >=0.14.0.

## 0.1.1+2

* Upgraded polymer version constraint to >=0.13.0.
* Upgraded core elements constraint to >=0.2.0+1.

## 0.1.1+1

* Expanded polymer version constraint to <0.14.0.

## 0.1.1

* Updated all elements to the 0.3.5 js version.

## 0.1.0+3

* Removed unused `html5lib` dev dependency.

## 0.1.0+2

* Updated all elements to the 0.3.4 js version.
