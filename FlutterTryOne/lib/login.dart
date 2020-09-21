import 'package:flutter/material.dart'; //qui dentro ci sono i widget


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
      title: "MyMaterialApp",
      theme: ThemeData(primarySwatch: Colors.blue), //tema predefinito
      home: LoginPage() //oggetto di classe LoginPage, supporto routes per la navigazione
    );
  } 
  
}

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Login page")),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //primo elemento di column
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text("LOGIN")
            ),

            //secondo elemento di column
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: <Widget>[
                 
                  //primo elemento di row
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text("USERNAME")
                  ),
                 
                  //secondo elemento di row
                  Flexible(
                    child: TextField(),
                  )

                ],
              ),
            ),
            
            //terzo elemento di column
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: <Widget>[
                 
                  //primo elemento di row
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text("PASSWORD")
                  ),
                 
                  //secondo elemento di row
                  Flexible(
                    child: TextField(obscureText: true,),
                  )

                ],
              ),
            ),

            //quarto elemento di column
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                
                RaisedButton(
                  child: Text("Login"),
                  onPressed: () => {},
                )
        
              ],
            ),

          ]),
      ),
    );//scheletro della pagina login
  }

}