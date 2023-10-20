


import 'package:hive_flutter/adapters.dart';

class HiveRepository{

   final Box _box=Hive.box('slovar');


     saveSlovarEnglish(List<String> list){
       _box.put('slovarEng', list);
     }


   List<String> getSlovarEnglish(){
     return _box.get('slovarEng',defaultValue: <String>[]);
   }




}