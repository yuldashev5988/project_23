import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_23/controllers/counter_controller.dart';
import 'package:project_23/pages/next_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Home Page",
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, Nextpage.id);
          }, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,))
        ],
      ),
      body: Center(
        child: Obx(() => Text(
              counterController.counter.toString(),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          counterController.add();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
