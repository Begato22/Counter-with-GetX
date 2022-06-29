import 'package:counter_getx/Controller/counterx_contoller.dart';
import 'package:counter_getx/View/counter_moduel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController _counterContoller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter With GetX"),
      ),
      body: Center(
        child: Container(
            width: double.infinity,
            height: 350,
            margin: EdgeInsets.all(5),
            child: Card(
              elevation: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "DashBoard",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 15,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CounterModuel(),
                      SizedBox(width: 15),
                      CounterModuel(),
                    ],
                  )
                ],
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _counterContoller.Increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
