import 'package:flutter/material.dart';
import 'package:lesson14_flutter/homework/hive.dart';

class Dialog2 extends StatefulWidget {
  const Dialog2({super.key});

  @override
  State<Dialog2> createState() => _Dialog2State();
}

class _Dialog2State extends State<Dialog2> {



  HiveRepository hiveRepository=HiveRepository();


  TextEditingController english=TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> eng=hiveRepository.getSlovarEnglish();
    return Scaffold(
      body:  Dialog(
          child: Container(
            height:400,
            width: 300,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  width:220,
                  child: TextField(
                    controller: english,
                    decoration: InputDecoration(
                        hintText:'ENGLISH-UZBEK',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),


                Container(
                  width:220,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText:'O`ZBEKCHA-INGLIZCHA',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),


                MaterialButton(
                  padding: EdgeInsets.only(left: 5,right: 5),
                  onPressed: (){
                 List<String> slovarEng=hiveRepository.getSlovarEnglish();
                 hiveRepository.saveSlovarEnglish(
                     slovarEng..add(english.text)
                 );
                 Navigator.pop(context);
                  },
                  child: Container(
                      height: 50,
                      width: 150,
                      color: Colors.blue,
                      child:Center(
                        child: Text('add',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                      )
                  ),)


              ],
            ),
          )
      ),
    );
  }
}
