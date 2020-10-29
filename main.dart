import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
  ),
  );
}

class Botao extends StatelessWidget{
  Botao({this.color});

  final Color color;


  @override
  Widget build(BuildContext context){
    return Container(
      width: 150,
      height: 50,
      color: color,
      child: Center(
        child: Text(
            'Botão'
        ),
      )
    );
    }
  }

class BotaoBase extends Botao {
  BotaoBase() :super(
      color: Colors.grey
  );
}

class BotaoVerde extends Botao {
  BotaoVerde() :super(
  color: Colors.green
  );
}

class BotaoAzul extends Botao {
  BotaoAzul() :super(
      color: Colors.blue
  );
}

class BotaoR extends StatelessWidget{
  BotaoR({this.color});

  final Color color;
  
    @override
  Widget build(BuildContext context){
    return FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: color)
        ),
        color: color,
        padding: EdgeInsets.all(8.0),
        onPressed: () {},
        child: Text(
        "Botão Redondo",
        ),
    );
  }
}

class BotaoBaseR extends BotaoR {
  BotaoBaseR() :super(
      color: Colors.grey
  );
}

class BotaoAmareloR extends BotaoR {
  BotaoAmareloR() :super(
      color: Colors.yellow
  );
}

class BotaoAzulR extends BotaoR {
  BotaoAzulR() :super(
      color: Colors.blue
  );
}
