import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "News Today",
        home: Scaffold(
          appBar: AppBar(title: Text("Last News")),
          body: Text("Lastest News will be dipslayed hered..."),
        ));
  }
}
