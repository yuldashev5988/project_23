import 'package:get/get.dart';

class CounterController extends GetxController{
  var counter=0.obs;
  RxString name="".obs;

  void add(){
    counter++;
  }
  void setName({required String nameController}){
    name.value=nameController;

  }

}