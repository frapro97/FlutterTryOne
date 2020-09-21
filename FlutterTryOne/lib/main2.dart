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

    return Container( //piu sofisticato di center, lo uso con il suo construttore nominale
      color: Colors.grey,
      margin: const EdgeInsets.only(top: 50.0),
      padding: const EdgeInsets.all(40.0),
      alignment: Alignment.topCenter,
      child: Row( //altro widget per strutturare il layout
        mainAxisAlignment: MainAxisAlignment.start, //fa partire il contenuto più in alto che può (verticale perché column va in verticale)
        //crossAxisAlignment: CrossAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textDirection: TextDirection.ltr,
        children: <Widget>[ //lista di widget
          Container(
            color: Colors.blue,
            child: Text("Testo breve", textDirection: TextDirection.ltr,),
          ),
          Container(
            color: Colors.orange,
            child: Text("Testo abbastanza lungo", textDirection: TextDirection.ltr,),
          ),
          Container(
            color: Colors.red,
            child: Text("Testo meno breve", textDirection: TextDirection.ltr,),
          ),
        ]
      )
    );
  } 
  
}
