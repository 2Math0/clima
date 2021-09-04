import 'package:flutter/material.dart';

class DialogAlerting {

  bool _fromTop = true;

  Future<void> showMyDialog(BuildContext context){
    return showGeneralDialog(
    barrierLabel: "Label",
    barrierDismissible: false,
    barrierColor: Colors.white.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 600),
    context: context,
    pageBuilder: (context, anim1, anim2) {
        return AlertDialog(
          backgroundColor: Colors.black.withOpacity(0.7),
          title: Text(
            'Excuse Me!',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'You still in the same City \n',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                    'this button function is to know your updated location and give you it\'s weather.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
        transitionBuilder: (context, anim1, anim2, child) {
          return SlideTransition(
            position:
            Tween(begin: Offset(0, _fromTop ? -1 : 1), end: Offset(0, 0))
                .animate(anim1),
            child: child,
          );
        });
  }
}
