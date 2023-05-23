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
          title: const Text(
            'Localisation',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Get.to(const HomePage());
              },
              icon: const Icon(
                Icons.ac_unit_rounded,
                color: Colors.redAccent,
                size: 30,
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'How Are You!'.tr,
                style: const TextStyle(
                  fontSize: 35,
                ),
              ),
              MyDropdownButton(
                onLocaleChanged: (locale) {
                  controller.changeLocale(
                      locale.languageCode, locale.countryCode!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDropdownButton extends StatefulWidget {
  final ValueChanged<Locale> onLocaleChanged;

  const MyDropdownButton({super.key, required this.onLocaleChanged});

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String dropdownValue = 'en_US';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
        if (newValue != null) {
          final locale =
              Locale(newValue.substring(0, 2), newValue.substring(3, 5));
          widget.onLocaleChanged(locale);
        }
      },
      items: const <DropdownMenuItem<String>>[
        DropdownMenuItem<String>(
          value: 'hi_IN',
          child: Text('Hindi'),
        ),
        DropdownMenuItem<String>(
          value: 'en_US',
          child: Text('English'),
        ),
        DropdownMenuItem<String>(
          value: 'fr_FR',
          child: Text('French'),
        ),
        DropdownMenuItem<String>(
          value: 'es_ES',
          child: Text('Spanish'),
        ),
        DropdownMenuItem<String>(
          value: 'de_DE',
          child: Text('German'),
        ),
        DropdownMenuItem<String>(
          value: 'ja_JP',
          child: Text('Japanese'),
        ),
        DropdownMenuItem<String>(
          value: 'ko_KR',
          child: Text('Korean'),
        ),
        DropdownMenuItem<String>(
          value: 'it_IT',
          child: Text('Italian'),
        ),
        DropdownMenuItem<String>(
          value: 'pt_PT',
          child: Text('Portuguese'),
        ),
        DropdownMenuItem<String>(
          value: 'ru_RU',
          child: Text('Russian'),
        ),
        DropdownMenuItem<String>(
          value: 'zh_CN',
          child: Text('Chinese'),
        ),
        DropdownMenuItem<String>(
          value: 'ar_SA',
          child: Text('Arabic'),
        ),
        DropdownMenuItem<String>(
          value: 'nl_NL',
          child: Text('Dutch'),
        ),
        DropdownMenuItem<String>(
          value: 'pl_PL',
          child: Text('Polish'),
        ),
        DropdownMenuItem<String>(
          value: 'tr_TR',
          child: Text('Turkish'),
        ),
        DropdownMenuItem<String>(
          value: 'vi_VN',
          child: Text('Vietnamese'),
        ),
        DropdownMenuItem<String>(
          value: 'sv_SE',
          child: Text('Swedish'),
        ),
        DropdownMenuItem<String>(
          value: 'fi_FI',
          child: Text('Finnish'),
        ),
        DropdownMenuItem<String>(
          value: 'nb_NO',
          child: Text('Norwegian'),
        ),
        DropdownMenuItem<String>(
          value: 'da_DK',
          child: Text('Danish'),
        ),
        DropdownMenuItem<String>(
          value: 'cs_CZ',
          child: Text('Czech'),
        ),
        DropdownMenuItem<String>(
          value: 'sk_SK',
          child: Text('Slovak'),
        ),
        DropdownMenuItem<String>(
          value: 'hu_HU',
          child: Text('Hungarian'),
        ),
        DropdownMenuItem<String>(
          value: 'ro_RO',
          child: Text('Romanian'),
        ),
        DropdownMenuItem<String>(
          value: 'el_GR',
          child: Text('Greek'),
        ),
        DropdownMenuItem<String>(
          value: 'th_TH',
          child: Text('Thai'),
        ),
        DropdownMenuItem<String>(
          value: 'id_ID',
          child: Text('Indonesian'),
        ),
        DropdownMenuItem<String>(
          value: 'ms_MY',
          child: Text('Malay'),
        ),
        DropdownMenuItem<String>(
          value: 'tl_PH',
          child: Text('Tagalog'),
        ),
        DropdownMenuItem<String>(
          value: 'bn_BD',
          child: Text('Bengali'),
        ),
        DropdownMenuItem<String>(
          value: 'ta_IN',
          child: Text('Tamil'),
        ),
        DropdownMenuItem<String>(
          value: 'te_IN',
          child: Text('Telugu'),
        ),
        DropdownMenuItem<String>(
          value: 'mr_IN',
          child: Text('Marathi'),
        ),
        DropdownMenuItem<String>(
          value: 'ur_PK',
          child: Text('Urdu'),
        ),
        DropdownMenuItem<String>(
          value: 'fa_IR',
          child: Text('Persian'),
        ),
      ],
    );
  }
}
