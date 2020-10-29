import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                'Botões',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height:40,
              ),
              Row(
              children: [
                SizedBox(
                  width:200,
                ),
                BotaoBase(
               ),
               SizedBox(
                  width:40,
                ),
                BotaoAzul(
                ),
                SizedBox(
                  width:40,
                ),
                BotaoVerde(
                ),
              ],
            ),
              SizedBox(
                height:40,
              ),
              Row(
                children: [
                  SizedBox(
                    width:200,
                  ),
                  BotaoBaseR(
                  ),
                  SizedBox(
                    width:90,
                  ),
                  BotaoAzulR(
                  ),
                  SizedBox(
                    width:90,
                  ),
                  BotaoAmareloR(
                  ),
                ],
              ),
              SizedBox(
                height:40,
              ),
              Text(
                'Textos',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height:10,
              ),
              Text(
                'Um texto base',
              ),
              SizedBox(
                height:10,
              ),
              Text(
                'Um texto bem pequeno',
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
              SizedBox(
                height:10,
              ),
              Text(
                'Um texto de tamanho médio',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height:10,
              ),
              Text(
                'Um texto grande',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height:10,
              ),
              Text(
                'Um texto gigante',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height:10,
              ),
              Text(
                'Um texto em negrito',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height:10,
              ),
              Text(
                'Um texto em itálico',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height:10,
              ),
            ],
          ),
          ),
        ),
      ),
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
