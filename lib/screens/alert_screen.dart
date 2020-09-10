import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
      child:RaisedButton(
            onPressed:() => abrir (context),
            child: const Text('Abrir Alert'),
          ),
      ),
    );
  }
}
void abrir (BuildContext context) {
showDialog(
  context: context,
  barrierDismissible: true,
  builder: (context){
    return AlertDialog(
      title: Text ('Alerta'),
      content: SingleChildScrollView(
        child: ListBody(
        children: <Widget>[
          Text('Esto es una alerta'),
          FlutterLogo(size: 100.0,)
        ],
      ),
    ),
    
      actions: <Widget> [
        FlatButton(
          child: Text ('Cancelar'),
          onPressed: () => Navigator.pop(context),
          ),
          FlatButton(
          child: Text ('Ok'),
          onPressed: () => Navigator.pop(context),
            ),
      ],
    );
  },
 );      
}
