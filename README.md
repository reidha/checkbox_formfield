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

```
class TaskEditPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sample',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  CheckboxListTileFormField(
                    title: Text('Check!'),
                    onSaved: (bool value) {},
                    validator: (bool value) {
                      if (value) {
                        return null;
                      } else {
                        return 'False!';
                      }
                    },
                  ),
                  CheckboxIconFormField(
                    iconSize: 32,
                    onSaved: (bool value) {},
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

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
|autovalidate|[FormField.autovalidate](https://api.flutter.dev/flutter/widgets/FormField/autovalidate.html)|
|enabled|Whether the checkbox is enabled|
|dense|[CheckboxListTile.dense](https://api.flutter.dev/flutter/material/CheckboxListTile/dense.html)|
|errorColor|Color of error message<br> Default: `Theme.errorColor` (`context` is given), `Colors.red` (otherwise)|
|activeColor|[CheckboxListTile.activeColor](https://api.flutter.dev/flutter/material/CheckboxListTile/activeColor.html)|
|checkColor|[CheckboxListTile.checkColor](https://api.flutter.dev/flutter/material/CheckboxListTile/checkColor.html)|
|controlAffinity|[CheckboxListTile.controlAffinity](https://api.flutter.dev/flutter/material/CheckboxListTile/controlAffinity.html)|
|secondary|[CheckboxListTile.secondary](https://api.flutter.dev/flutter/material/CheckboxListTile/secondary.html)|

### CheckboxIconFormField

|Parameter|Description|
|----|----|
|key|[FormField.key](https://api.flutter.dev/flutter/widgets/FormField/key.html)|
|context|Provide a default color to `errorColor`|
|onSaved|[FormField.onSaved](https://api.flutter.dev/flutter/widgets/FormField/onSaved.html)|
|initialValue|[FormField.initialValue](https://api.flutter.dev/flutter/widgets/FormField/initialValue.html)|
|autovalidate|[FormField.autovalidate](https://api.flutter.dev/flutter/widgets/FormField/autovalidate.html)|
|enabled|Whether the checkbox is enabled|
|trueIcon|`IconData` if true <br> Default: `Icons.check`|
|falseIcon|`IconData` if false <br> Default: `Icons.check_box_outline_blank`|
|trueIconColor|`Color` if true <br> Default: `Theme.accentIconTheme.color` (if `context` is given), `Theme.iconTheme.color` (otherwise)|
|falseIconColor|`Color` if false <br> Default: `Theme.iconTheme.color`|
|disabledColor|`Color` if disabled <br> Default: `Theme.disabledColor`|
|padding|`padding`<br> Default: 24.0|
|iconSize|[Icon.size](https://api.flutter.dev/flutter/widgets/Icon/size.html)|
