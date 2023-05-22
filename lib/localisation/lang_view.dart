import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_revisiting/localisation/lang_controller.dart';
import 'package:getx_revisiting/localisation/strings.dart';
import 'package:getx_revisiting/main.dart';

import '../home_page.dart';

class LangView extends StatelessWidget {
  LangView({Key? key}) : super(key: key);

  var controller = Get.put(LangController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Strings(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Localisation'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Get.to(const HomePage());
              },
              icon: const Icon(Icons.ac_unit_rounded),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'How Are You!'.tr,
                style: const TextStyle(
                  fontSize: 35,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocale('hi', 'IN');
                },
                child: const Text('Hindi'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocale('en', 'US');
                },
                child: const Text('English'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocale('fr', 'FR');
                },
                child: const Text('French'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
