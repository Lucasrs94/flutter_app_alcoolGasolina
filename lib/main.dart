import 'package:ag/pages/home.page.dart';
import 'package:ag/widgets/input.wiget.dart';
import 'package:ag/widgets/loading.dart';
import 'package:ag/widgets/logo.widgets.dart';
import 'package:ag/widgets/submit-form.dart';
import 'package:ag/widgets/sucess.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePagess(),
    );
  }
}
 