# Prima Lezione

La prima lezione di Flutter che introduce ai concetti di
Statefull, Stateless Widget e le basi per creare la prima applicazione
## Stateless e Statefull Widget e la prima Applicazione

Un Widget Statefull è un Widget che ha uno stato interno che può essere
modificato mediante le interazione dell'utente con la nostra
applicazione. \
\
Uno Stateless Widget è invece un Widget che non ha uno stato interno e si presta
molto bene per le componenti statiche della nostra applicazione, poiché non viene
modificato il proprio stato dalle interazione dell'utente. \
Per inizializzarne uno si usa la seguente sintassi:
```dart
class MyWidget extends StatelessWidget{
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Widget; //Potrebbe essere ad esempio uno
    //scaffold o un Container
  }
}
```
Osserviamo ora il codice pesente nel [main.dart](lib\main.dart) pezzo per pezzo.
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}
```
Come prima cosa importiamo la libreria material.dart che è essenziale se vogliamo scrivere
un'applicazione in flutter. \
Dichiairamo quindi il main, che è il punto di entrata del nostro codice: al suo interno
richiamiamo un'altra funzione che ci permette di avviare l'effettiva applicazione, che non
è altro che un Widget(In Flutter, di fatto, si fa prima a identificare cosa non sia un Widget
che il contrario).
```dart
class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
```
Questa è invece la nostra applicazione effettiva, rappresentata da un widget Stateless. In questa classe andiamo quindi a
creare un altro Widget build che andiamo a sovrascrivere da quello che si trova nella classe StatelessWidget,
ritornando una MaterialApp con come Home un altro Widget, che questa volta corrisponde a una pagina della nostra applicazione.
```dart
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children:[
          //Per ridimensionare qualcosa, usare sizedBox
          //Per mettere padding esiste Padding
          //Container ci permette di avere più caratteristiche
          for(int i = 0; i < 10; i++)
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text("Ciao a tutti"),
            ),
          //Sovappone i widget in profondità
          Stack(
            children: [
              Container(
                color: Colors.red,
                height: 200,
                width: 220,
              ),
              Container(
                color: Colors.yellow,
                height: 180,
                width: 200,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
            ],
          )
        ]
      ),
    );
  }

}
```
Andiamo infine a scrivere la nostra pagina effettiva. Il Widget build, invece che ritornare una MaterialApp, questa volta ritorna una Scaffold,
ovvero un Widget che ci permette di avere già una prima impostazione della pagina: ci permette di distinguere componenti come AppBar, Body, BottomNavBar
e altri ancora. Il codice scritto, se eseguito, dà vita a questa pagina:

<img src="docimg/firstLessonImage.PNG">

Al suo interno viene quindi creata un'AppBar definendo il suo colore di sfondo come rosso. Per le colorazione flutter sfrutta la classe Colors. \
Come body invece andiamo a definire una ListView: questo è un Widget che ci permette di avere una vista scrollabile nell'applicazione. Attenzione però:
nulla ci impedisce di avere altri Widget al posto di ListView. Potremmo avere un Widget Container, che non è altro che un Box, un Widget Column, che ci permette
di posizionare i Widget figli come si fa con la ListView con l'unica limitazione che se i Widget vanno oltre alle dimensioni del genitore, si genere un errore di Overflow
e non ci dà la possibilità di una vista scrollabile.\
Dentro la lista dei testi in maniera dinamica grazie a un for: generiamo quindi 10 testi. Il Widget testo è però avvolto da Padding, un altro widget che ci permette di avere,
come ci suggerisce il nome, un padding. Infatti specifichiamo un padding solo a destra di 20. \
\
Andiamo infine a definire uno Stack, che non è altro che un Widget che ci permette di impilare i widget figli in profondità, come possiamo vedere dall'immagine dell'applicazione.
Infatti sullo sfondo abbiamo il container rosso, poi quello giallo e infine quello verde, uno sopra l'altro. 