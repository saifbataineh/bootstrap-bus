import 'package:flutter/material.dart';
import 'package:khodari_test/utils/constants.dart';
import 'package:khodari_test/widget/postitined.dart';

class Countries extends StatefulWidget {
  const Countries({super.key});

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  double left = 10;

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();

    return Container(
        child: Column(children: [
      Text(
        isEnglish ? "Where to find us?" : "اين تجدنا؟",
        style: const TextStyle(
          fontSize: 35,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold,
        ),
      ),
      SingleChildScrollView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        child: Stack(children: [
          Container(
              color: Colors.black87,
              width: 1536,
              child: Image.asset(
                "assets/map.png",
              )),
          pp(top: 102, left: 825, name: isEnglish ? "netherlands" : "هولندا"),
          pp(
              top: 140,
              left: 175,
              name: isEnglish ? "USA" : "الولايات المتحدة الامريكية"),
          pp(top: 98, left: 830, name: isEnglish ? "Denmark" : "الدنمارك"),
          pp(top: 380, left: 1260, name: isEnglish ? "australlia" : "استراليا"),
          pp(top: 185, left: 985, name: isEnglish ? "bahrain" : "بحرين"),
          pp(top: 160, left: 960, name: isEnglish ? "Iraq" : "العراق"),
          pp(top: 104, left: 833, name: isEnglish ? "Belgium" : "بلجيكا"),
          pp(top: 80, left: 200, name: isEnglish ? "canada" : "كندا"),
          pp(top: 120, left: 820, name: isEnglish ? "France" : "فرنسا"),
          pp(top: 180, left: 980, name: isEnglish ? "Kuwait" : "الكويت"),
          pp(top: 190, left: 990, name: isEnglish ? "Qatar" : "قطر"),
          pp(top: 115, left: 905, name: isEnglish ? "Romania" : "رومانيا"),
          pp(top: 163, left: 865, name: isEnglish ? "Qatar" : "ليبيا"),
          pp(top: 230, left: 970, name: isEnglish ? "Yemen" : "اليمن"),
          pp(
              top: 200,
              left: 955,
              name: isEnglish ? "saudi arabia" : "السعودية"),
          pp(
              top: 72,
              left: 810,
              name: isEnglish ? "United Kingdom" : "بريطانيا"),
          pp(top: 130, left: 850, name: isEnglish ? "Italy" : "ايطاليا"),
          pp(top: 235, left: 1080, name: isEnglish ? "india " : "الهند"),
          pp(top: 160, left: 930, name: isEnglish ? "Palestine " : "فلسطين"),
          pp(
              top: 195,
              left: 995,
              name: isEnglish ? "UAE " : "الامارات العربية المتحدة"),
          pp(top: 88, left: 867, name: isEnglish ? "Poland " : "بولندا"),
          pp(top: 55, left: 875, name: isEnglish ? "Sweden " : "السويد"),
          pp(top: 110, left: 925, name: isEnglish ? "Ukraine " : "اوكرانيا"),
          pp(top: 120, left: 870, name: isEnglish ? "Germany " : "المانيا"),
          pp(top: 200, left: 1015, name: isEnglish ? "Oman " : "عمان"),
          pp(top: 115, left: 980, name: isEnglish ? "Georgia " : "جورجيا"),
          pp(top: 150, left: 920, name: isEnglish ? "Cyprus " : "قبرص"),
         Positioned(
                  
                  left: left,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      controller.jumpTo(controller.offset - 100);
                      setState(() {
                        left = left - 100;
                        print(left);
                      });
                    },
                  ),
                ),
         Positioned(
                  
                  left: left+450,
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      controller.jumpTo(controller.offset + 100);
                      setState(() {
                        left = left + 100;
                        print(left);
                      });
                    },
                  ),
                ),
                
        ]),
      ),
    ]));
  }
}
