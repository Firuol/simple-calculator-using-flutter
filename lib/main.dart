import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {

@override
  Widget build(BuildContext context){
  return MaterialApp(
    home: CalculatorScreen(),
  );
}
}
class CalculatorScreen extends StatelessWidget{
@override
_calculatorScreenState createState() =>_calculatorScreenState();
}
class _calculatorScreenState extends State<CalculatorScreen> {
  @override
  String _output= '';
  double _result=0;
  String _currentinput='';
  String _currentoperator= '';
  bool _isoperatorpressed = false;
 void _ondigitpressed (){
   setState(() {
   if(_isoperatorpressed){
    _currentinput='';
    _isoperatorpressed= false;
   }
   _currentinput += digit;
   _output =_currentinput;
   });
 }

 void _operatorispressed( String operator){
   setState(() {
  if(_currentinput.isEmpty){
    if(_currentoperator.isEmpty){
     _calculatorresult();
    }
    _result= double.parse(_currentinput);
    _currentoperator=operator;
    _isoperatorpressed=true;
}
   });
 }

}