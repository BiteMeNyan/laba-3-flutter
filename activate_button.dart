import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'AppModel.dart';

class ActivateButton extends StatefulWidget {

  bool _activate;
  var index;
  final Function activateBonus;

  ActivateButton(this._activate, this.index, this.activateBonus);

  @override
  createState() => new ActivateButtonState(_activate, index, activateBonus);
}

class ActivateButtonState extends State<ActivateButton> {

  bool activate;
  var index;
  Function activateBonus;

  ActivateButtonState(this.activate, this.index, this.activateBonus);

  void pressButton() {
    setState(() {
      activate = !activate;

      (index == 1 || index == 0) ? activateBonus(20.0) : activateBonus();

    });
  }

  @override
  Widget build(BuildContext context) {

     return new Container(

       child: RaisedButton(
         onPressed: pressButton,

         color: (activate) ? Colors.red : Colors.green,


         child: Text(activate ? "Активувати" : "Активовано",
           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: Colors.white),
         ),
       ),
     );
   }

  }

