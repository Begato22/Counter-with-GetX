import 'package:counter_getx/Controller/counterx_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterModuel extends StatelessWidget {
  const CounterModuel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController _counterContoller = Get.find();
    return Card(
      elevation: 7,
      child: Container(
        width: 130,
        height: 130,
        child: GetBuilder<CounterController>(
          init: CounterController(),
          builder: (_) => Center(
              child: Text(
            "${_counterContoller.c}",
            style: const TextStyle(fontSize: 70, fontWeight: FontWeight.w100),
          )),
        ),
      ),
    );
  }
}
