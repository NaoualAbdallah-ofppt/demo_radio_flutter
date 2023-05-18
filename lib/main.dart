import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage();
@override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

String? genre="F";
int? etat=1;
final titles = ["AXAX", "AYAY", "AZAZ"];
String _selectedValue="--";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       title: Text("Radio Demo"),
      ),
      body: Column(
        children: [
          Text("Genre"),
      RadioListTile(
      title: Text("Homme"),
      value: "H",
      groupValue: genre,
      onChanged: (value){
        setState(() {
          genre = value;
        });
      },
    ),

    RadioListTile(
    title: Text("Femme"),
    value: "F",
    groupValue: genre,
    onChanged: (value){
    setState(() {
    genre = value;
    });
    },
    ),
          Text("Etat cicil"),
          RadioListTile(
            title: Text("Marié"),
            value: 1,
            groupValue: etat,
            onChanged: (value){
              setState(() {
                etat = value;
              });
            },
          ),

          RadioListTile(
            title: Text("Célibataire"),
            value: 2,
            groupValue: etat,
            onChanged: (value){
              setState(() {
                etat = value;
              });
            },
          ),
          Text("Liste"),

          Container(
            width: 200,
              height: 80,
               child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                Text('List 1',),
                Text('List 2'),
                Text('List 3'),
              ],
            )
          ),

          Container(
              width: 200,
              height: 80,
              child: ListView(
                                padding: const EdgeInsets.all(8),
                children: titles.map((e) {
                  return Text(e,);
              }
                ).toList()
                  //ou return [Text("hh"),Text("ll"),Text("kjj")].toList()
              ),
          ),
          Text("La valeur sélectionnée est : $_selectedValue"),
          Container(
            width: 200,
            height: 100,
            child: ListView.builder(
              itemCount: titles.length,
                itemBuilder: (context,index){
                  return ListTile(
                      title:Text(titles[index]),
                    tileColor:Colors.blue ,
                    onTap: (){
                        setState(() {
                          _selectedValue=titles[index];
                        });
                    },
                  ); //must return widget
                },

              //ou return [Text("hh"),Text("ll"),Text("kjj")].toList()
            ),
          ),



],
        ),
    );
  }
}
