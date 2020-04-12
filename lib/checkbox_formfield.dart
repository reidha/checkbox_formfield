library checkbox_formfield;

import 'package:flutter/material.dart';

class CheckboxListTileFormField extends FormField<bool> {
  CheckboxListTileFormField({
    Key key,
    Widget title,
    BuildContext context,
    FormFieldSetter<bool> onSaved,
    FormFieldValidator<bool> validator,
    bool initialValue = false,
    bool autovalidate = false,
    bool enabled = true,
    bool dense = false,
    Color activeColor,
    Color checkColor = const Color(0xFFFFFFFF),
    ListTileControlAffinity listTileControlAffinity =
        ListTileControlAffinity.leading,
    Widget secondary,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          autovalidate: autovalidate,
          builder: (FormFieldState<bool> state) {
            return CheckboxListTile(
              title: title,
              dense: dense,
              // if active color is null, Theme.of(context).accentColor will be used.
              activeColor: activeColor,
              checkColor: checkColor,
              value: state.value,
              onChanged: enabled ? state.didChange : null,
              subtitle: state.hasError
                  ? Text(
                      state.errorText,
                      style: context == null
                          ? TextStyle(color: Colors.red)
                          : TextStyle(color: Theme.of(context).errorColor),
                    )
                  : null,
              controlAffinity: listTileControlAffinity,
              secondary: secondary,
            );
          },
        );
}

class CheckboxIconFormField extends FormField<bool> {
  CheckboxIconFormField({
    Key key,
    BuildContext context,
    FormFieldSetter<bool> onSaved,
    //FormFieldValidator<bool> validator,
    bool initialValue = false,
    bool autovalidate = false,
    bool enabled = true,
    IconData trueIcon = Icons.check,
    Color trueIconColor,
    IconData falseIcon = Icons.check_box_outline_blank,
    Color falseIconColor,
    double padding = 24.0,
    double iconSize = 24.0,
  }) : super(
          key: key,
          onSaved: onSaved,
          //validator: validator,
          initialValue: initialValue,
          autovalidate: autovalidate,
          builder: (FormFieldState<bool> state) {
            return Padding(
              padding: EdgeInsets.all(padding),
              child: _createTappableIcon(state, trueIcon, trueIconColor,
                  falseIcon, falseIconColor, iconSize),
            );
          },
        );

  static Widget _createTappableIcon(
      FormFieldState<bool> state,
      IconData trueIcon,
      Color trueIconColor,
      IconData falseIcon,
      Color falseIconColor,
      double iconSize) {
    if (state.value) {
      return GestureDetector(
        onTap: () {
          state.didChange(false);
        },
        child: Icon(trueIcon, color: trueIconColor, size: iconSize),
      );
    } else {
      return GestureDetector(
        onTap: () {
          state.didChange(true);
        },
        child: Icon(falseIcon, color: falseIconColor, size: iconSize),
      );
    }
  }
}
