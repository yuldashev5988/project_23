import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_23/controllers/counter_controller.dart';
import 'package:project_23/pages/home_page.dart';

class Nextpage extends StatefulWidget {
  static const String id = "next_page";

  Nextpage({super.key});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Next Page",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 26),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          child: ListView(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: "Enter your name"),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  counterController.setName(
                      nameController: nameController.text.trim());
                },
                child: Text(
                  "Change",
                  style: TextStyle(),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Obx(() => Text(
                        "Name is: ${counterController.name}",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
