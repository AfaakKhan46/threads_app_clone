import 'dart:math';

import '../model.dart';
import '../senddata/data.dart';

abstract class Ithread {
  List<thread> getThread();
}

class threadRemoteDatasource extends Ithread{
  @override
  List<thread> getThread() {
    return listThear().map((jsonObject) => thread.formJson(jsonObject)).toList();
  }



  

  
  
}

