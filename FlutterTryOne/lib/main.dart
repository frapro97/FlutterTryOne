import 'package:flutter/material.dart'; //qui dentro ci sono i widjet


void main(List<String> args) {
  runApp(MyApp());
}

//al momento per il testo usiamo contenitori stateles perche il testo non lo mutiamo nel tempo ora

//creiamo il nostro widget
class MyApp extends StatelessWidget{//StatelessWidget è un interfaccia
  // This widget is the root of your application.
  
  
  @override
  Widget build(BuildContext context) { //metodo astratto dell'interfaccia (genera il contenuto) viene chiamato in automatico
    
    /*return Center(//center ha un parametro nominale chiamto child
      child: Text(this.myText, textDirection: TextDirection.ltr,) //costruiamo un oggetto di classe text
    ); //center è un contenitore widget layout che conterrà un solo child*/

    return MaterialApp(
      title: "Fluetter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: "Test Widget"),
    );
  } 
  
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
  }
  
}