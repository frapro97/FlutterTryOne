import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //qui dentro ci sono i widjet


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
      title: "Personal budget",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PbHomePage(),
    );
  } 
  
}


class PbHomePage extends StatefulWidget{ //ha uno stato così diventa reattiva
  //classe che rappresenta la parte immutabile
  PbHomePage({Key key}) : super(key: key);
  //key identifica questo specifico widget tipo id nell'html
  final String title = "Personal budget";

  @override
  _PbHomePageState createState() => _PbHomePageState(); //createState() viene chiamato ogniqualvosta lo stato deve essere aggiornato
  
}

class _PbHomePageState extends State<PbHomePage>{
  int _selectedIndex = 0;

  //definisce lo stato della homepage  _ classe privata
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), //widget è il riferimento a PbHomePage
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () => {},
          ),
        ],
      ), 
      body: Container(),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: (_index){
          setState(() { //notifica al sistema che c'è bisogno di aggiornare lo stato
            _selectedIndex = _index;  
          });
        }, 
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Elenco')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Dettaglio')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Oggi')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.devices_other),
            title: Text('Altro')
          ),
          
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Aggiungi spesa',
        onPressed: () => {},
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        child: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.fromLTRB(16,50,16,16),
          child: Text("Demo Menu"),
        ),
      ),
      /*bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.grey,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                child: Text("Elenco"),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("Dettaglio"),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("Totali"),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),*/
    );
  }
  
}