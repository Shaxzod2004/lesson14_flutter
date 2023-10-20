import 'package:flutter/material.dart';
import 'package:lesson14_flutter/homework/dialog.dart';
import 'package:lesson14_flutter/homework/hive.dart';

class Kirish extends StatefulWidget {
  const Kirish({super.key});

  @override
  State<Kirish> createState() => _KirishState();
}

class _KirishState extends State<Kirish> {


  HiveRepository hiveRepository=HiveRepository();

  @override
  Widget build(BuildContext context) {

    List<String> slovarEng=hiveRepository.getSlovarEnglish();

    return SafeArea(child: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title:Container(
            width: 300,
            height:50,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,size: 40,),
                  hintText: 'Search-Qidiruv',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
            ),
          )
      ),


      body: ListView.builder(itemBuilder: (context, index){

        return Padding(padding:EdgeInsets.all(10),
          child: Text(slovarEng[index]),
        );

      },
        itemCount: slovarEng.length,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async{
         await Navigator.push(context, MaterialPageRoute(builder: (contex)=>Dialog2()));
        },
        child: Icon(Icons.add),

      ),
    ));
  }
}
