import 'package:flutter/material.dart';

import 'package:checkbox_formfield/checkbox_formfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Lightweight Todo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.blue,
        disabledColor: Colors.purple,
        accentIconTheme: IconThemeData(
          color: Colors.blue,
        ),
      ),
      home: createScaffold(),
    );
  }
}

Widget createScaffold() {
  final _formKey = GlobalKey<FormState>();
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
                  onSaved: (bool value) {
                    print(value);
                  },
                  validator: (bool value) {
                    if (value) {
                      return null;
                    } else {
                      return 'False!';
                    }
                  },
                ),
                CheckboxIconFormField(
                  initialValue: true,
                  enabled: false,
                  iconSize: 32,
                  onSaved: (bool value) {},
                ),
                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
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
