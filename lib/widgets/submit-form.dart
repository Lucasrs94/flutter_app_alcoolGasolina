import 'package:ag/widgets/input.wiget.dart';
import 'package:ag/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm  extends StatelessWidget {
   var gasCrtl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
@required this.gasCrtl,
@required this.alcCtrl,
@required this.busy,
@required this.submitFunc,


  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

Padding
(
  padding: EdgeInsets.only(left: 30,
  right: 30,
  ),
  child: Input(

  label: "Gasolina",
ctrl:gasCrtl,
),
),

Padding
(
  padding: EdgeInsets.only(
  left: 30,
  right: 30,
  ),
  child: Input(

  label: "Alcool",
ctrl:alcCtrl,
),
),
SizedBox(height: 25,),
LoadingButton(
        busy: busy,
        func: submitFunc,
        text: "Calcular",
        invert: false,
      ),
      ],
    );
  }
}
  // Sucess(
  //         reset: (){},
  //         resul: "Compensa utilizar x",
  //       ),