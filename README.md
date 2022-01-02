# checkbox_formfield

[![pub package](https://img.shields.io/pub/v/checkbox_formfield.svg)](https://pub.dev/packages/checkbox_formfield)

A few kinds of checkbox that can be used as FormField

## Getting Started

This library currently has two Widgets.

* CheckboxListTileFormField: Use CheckboxListTile in Form
* CheckboxIconFormField: Use two Icons as if they consist a checkbox and also in Form

## Demo

![Demo](https://raw.githubusercontent.com/wiki/reidha/checkbox_formfield/images/demo.gif)

## Usage sample

Please check [example/lib](https://github.com/reidha/checkbox_formfield/tree/master/example/lib) in this library.  

## Specifications

### CheckboxListTileFormField

|Parameter|Description|
|----|----|
|key|[FormField.key](https://api.flutter.dev/flutter/widgets/FormField/key.html)|
|title|[CheckboxListTile.title](https://api.flutter.dev/flutter/material/CheckboxListTile/title.html)|
|context|Provide a default color to `errorColor`|
|onSaved|[FormField.onSaved](https://api.flutter.dev/flutter/widgets/FormField/onSaved.html)|
|validator|[FormField.validator](https://api.flutter.dev/flutter/widgets/FormField/validator.html)|
|initialValue|[FormField.initialValue](https://api.flutter.dev/flutter/widgets/FormField/initialValue.html)|
|autovalidateMode|[FormField.autovalidateMode](https://api.flutter.dev/flutter/widgets/FormField/autovalidateMode.html)|
|enabled|Whether the checkbox is enabled|
|dense|[CheckboxListTile.dense](https://api.flutter.dev/flutter/material/CheckboxListTile/dense.html)|
|errorColor|Color of error message<br> Default: `Theme.errorColor` (`context` is given), `Colors.red` (otherwise)|
|activeColor|[CheckboxListTile.activeColor](https://api.flutter.dev/flutter/material/CheckboxListTile/activeColor.html)|
|checkColor|[CheckboxListTile.checkColor](https://api.flutter.dev/flutter/material/CheckboxListTile/checkColor.html)|
|controlAffinity|[CheckboxListTile.controlAffinity](https://api.flutter.dev/flutter/material/CheckboxListTile/controlAffinity.html)|
|secondary|[CheckboxListTile.secondary](https://api.flutter.dev/flutter/material/CheckboxListTile/secondary.html)|
|contentPadding|[CheckboxListTile.contentPadding](https://api.flutter.dev/flutter/material/CheckboxListTile/contentPadding.html)|
|autofocus|[CheckboxListTile.autofocus](https://api.flutter.dev/flutter/material/CheckboxListTile/autofocus.html)|

### CheckboxIconFormField

|Parameter|Description|
|----|----|
|key|[FormField.key](https://api.flutter.dev/flutter/widgets/FormField/key.html)|
|context|Provide a default color to `errorColor`|
|onSaved|[FormField.onSaved](https://api.flutter.dev/flutter/widgets/FormField/onSaved.html)|
|initialValue|[FormField.initialValue](https://api.flutter.dev/flutter/widgets/FormField/initialValue.html)|
|autovalidateMode|[FormField.autovalidateMode](https://api.flutter.dev/flutter/widgets/FormField/autovalidateMode.html)|
|enabled|Whether the checkbox is enabled|
|trueIcon|`IconData` if true <br> Default: `Icons.check`|
|falseIcon|`IconData` if false <br> Default: `Icons.check_box_outline_blank`|
|trueIconColor|`Color` if true <br> Default: `Theme.colorScheme.secondary` (if `context` is given), `Theme.iconTheme.color` (otherwise)|
|falseIconColor|`Color` if false <br> Default: `Theme.iconTheme.color`|
|disabledColor|`Color` if disabled <br> Default: `Theme.disabledColor`|
|padding|`padding`<br> Default: 24.0|
|iconSize|[Icon.size](https://api.flutter.dev/flutter/widgets/Icon/size.html)|
