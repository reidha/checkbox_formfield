import 'package:flutter/material.dart';

import 'package:checkbox_formfield/checkbox_formfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample',
      theme: ThemeData(
        disabledColor: Colors.purple,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
            .copyWith(secondary: Colors.blue),
      ),
      home: createScaffold(context),
    );
  }
}

Widget createScaffold(BuildContext? context) {
  final _formKey = GlobalKey<FormState>();
  bool? checkboxIconFormFieldValue = false;
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
                  onSaved: (bool? value) {
                    print(value);
                  },
                  validator: (bool? value) {
                    if (value!) {
                      return null;
                    } else {
                      return 'False!';
                    }
                  },
                  onChanged: (value) {
                    if (value) {
                      print("ListTile Checked :)");
                    } else {
                      print("ListTile Not Checked :(");
                    }
                  },
                  autovalidateMode: AutovalidateMode.always,
                  contentPadding: EdgeInsets.all(1),
                ),
                CheckboxIconFormField(
                  context: context,
                  initialValue: checkboxIconFormFieldValue,
                  enabled: true,
                  iconSize: 32,
                  onSaved: (bool? value) {
                    checkboxIconFormFieldValue = value;
                  },
                  onChanged: (value) {
                    if (value) {
                      print("Icon Checked :)");
                    } else {
                      print("Icon Not Checked :(");
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                  child: Text('New'),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
