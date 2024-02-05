import 'package:flutter/material.dart';


class SecondLessonPage extends StatefulWidget{
  const SecondLessonPage({super.key});

  @override
  State<StatefulWidget> createState() => SecondLessonPageState();
}

class SecondLessonPageState extends State<SecondLessonPage>
{
  @override
  int testo = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
      ),

      body: ListView(
         children: [
           contanier_label(),
           padding_label(),
           Container(
             height: 50,
             margin: const EdgeInsets.symmetric(horizontal: 100),
             child: TextButton(
               onPressed: (){
                 setState(() {
                   testo++;
                 });
               },
                 style: const ButtonStyle(
                   backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
                 ),
               child: Text("Schiacciami")
             ),
           )

         ],
      ),
    );
  }









  Widget contanier_label()
  {
    //Imporre delle dimensioni precise: SizedBox
    //Imporre un'allineamento nella pagina: Alignment
    //Vogliamo dare un Padding: Padding
     return Container(
      margin: const EdgeInsets.only(top: 30, right: 50, left: 50),
      //alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        "Ciao a tutti",
        textAlign: TextAlign.center, //Al posto di alignment nel container
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget padding_label()
  {
    //Limitato solo al suo scopo: non abbiamo altri attributi da
    //affibiargli
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: Text(
        "$testo",
        style: const TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }
}
