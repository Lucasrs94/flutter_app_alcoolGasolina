import 'dart:async';

import 'package:ag/widgets/logo.widgets.dart';
import 'package:ag/widgets/submit-form.dart';
import 'package:ag/widgets/sucess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePagess  extends StatefulWidget {
  @override

  _HomePagessState createState() => _HomePagessState();
}

class _HomePagessState extends State<HomePagess> {
  var _gasCrtl = new MoneyMaskedTextController();
  Color _color =  Colors.deepPurple;
  var _alcCtrl = new MoneyMaskedTextController();

  var _busy  = false;

  var _completed = false;

  var resultado =  "Compensar utilizar o álcool";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(

        duration: Duration(
        microseconds: 1200,
      ),
      color: _color,
      child:  ListView(
      children: <Widget>[
        // dar o espaçamento
       Logo(),
       _completed 
       ? Sucess(
           reset: reset,
         resul: resultado,
       
       )
       :
      
      SubmitForm(
       alcCtrl: _alcCtrl,
       gasCrtl: _gasCrtl,
       submitFunc: calculate,
       busy:_busy,
       ),
    
       //retorna os campos
      
       

      ],


      ),
      ),
      
    );
  }

  Future calculate()
  {
double  alc = double.parse(_alcCtrl.text.replaceAll(new RegExp(r'[,.]') , '',),)/100;
double  gas = double.parse(_gasCrtl.text.replaceAll(new RegExp(r'[,.]') , '',),)/100;
double res =  alc / gas;
setState(() {
  _color =  Colors.deepPurpleAccent;
  _completed =  false;
_busy = true;
});


return new Future.delayed(const Duration(seconds:2),
()
{
setState(() {

if(res >=0.7)
{
 resultado = "Compensar utilizar Gasolina!";
}else
{
  resultado =  "Compensa utilizar Álcool!";
}
  
_busy = false;
_completed =  true;
  
});




});

}
reset(){
  setState(() {
_color =  Colors.indigo;
  _alcCtrl = new MoneyMaskedTextController();
_gasCrtl =  new MoneyMaskedTextController();
 _busy = false;
_completed =  false;
});
}
}