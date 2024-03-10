import 'package:flutter/material.dart';
import 'package:khodari_test/homePage/nar_bar.dart';
import 'package:khodari_test/utils/constants.dart';

class Categories extends StatelessWidget {
  Categories({super.key, this.items, this.title, this.itemsEn,this.titleEn});
  final List<dynamic>? items;
  final List<dynamic>? itemsEn;
  final String? titleEn;
  final String? title;
  final Map<String, List> cat = {
    "HerbsShellJars": ["BayLeaves", "Chamomile", "Hibiscus", "MixedHerbs"],
    "Oils": [
      "Black Seed Oil with box",
      "Black Seed Oil",
      "Castor Oil with box",
      "Castor Oil",
      "Coconut Oil with box",
      "Coconut Oil",
      "Mustard Oil with box",
      "Mustard Oil",
      "Sesame Oil with box",
      "Sesame Oil"
    ],
    "Organic Vinegar bottles": [
      "Apple Vinegar",
      "Balsamic Vinegar",
      "Red grape Vinegar",
      "White grape Vinegar"
    ],
    "Pulses Shell Jars": [
      "Chick Peas",
      "Coarse White Bulgur",
      "Fava Beans",
      "Fine Freekeh",
      "Fine Red Bulgur",
      "Fine White Bulgur",
      "Lime Beans",
      "Lupine",
      "Maftoul",
      "Popcorn seeds",
      "Red Split Lentil",
      "Small Beans",
      "Split Fava Beans",
      "Whie Beans",
      "Whole Lentil"
    ],
    "SQR Shakers Images": [
      "Allspice Ground SQRS",
      "Anise Ground SQRS",
      "Anise Seeds SQRS",
      "Bakin Powder SQRS",
      "Biryani Spices SQRS",
      "Black Pepper Crushed SQRS",
      "Black Pepper Ground SQRS",
      "Black Pepper Seeds SQRS",
      "Black Seeds SQRS",
      "Cajun Spices SQRS",
      "Caraway Ground SQRS",
      "Cardamom Ground SQRS",
      "Cardamom Seeds SQRS",
      "Chia Seeds SQRS",
      "Chicken Spices SQRS",
      "Cinnamon Ground SQRS",
      "Citric Salt SQRS",
      "Clove Seeds SQRS",
      "Cloves Ground SQRS",
      "Coriander Ground SQRS",
      "Coriander Seeds SQRS",
      "Cumin Ground SQRS",
      "Curry Spices SQRS",
      "Fish Spices SQRS",
      "Flax Seeds SQRS",
      "Garlic Ground SQRS",
      "Ginger Ground SQRS",
      "Grill & BBQ Spices SQRS",
      "Himalayan Salt SQRS",
      "Kabab Spices SQRS",
      "Kabsah Spices SQRS",
      "Kubbah Spices SQRS",
      "Kufta Spices SQRS",
      "Maqlubah Spices SQRS",
      "Meat Spices SQRS",
      "Meat Tenderizer SQRS",
      "Mixed Spices SQRS",
      "Nutmeg Ground SQRS",
      "Onion Ground SQRS",
      "Oregano SQRS",
      "Papprika Ground SQRS",
      "Peppermint Dry SQRS",
      "Pizza Spices SQRS",
      "Quinua Black Seeds SQRS",
      "Quinua White Seeds SQRS",
      "Red Chili Crushed SQRS",
      "Red Chili Ground SQRS",
      "Seven Spices SQRS",
      "Shawerma Spices SQRS",
      "Sumac SQRS",
      "Tikkah Spices SQRS",
      "Turmeric Ground SQRS",
      "Vanilla Powder SQRS",
      "White Ground SQRS",
      "White Pepper Seeds SQRS"
    ],
    "Syrup Bottles": [
      "Almond Syrup",
      "Apricot Syrup",
      "Carob Syrup",
      "Ginger Syrup",
      "Jallab Syrup",
      "Pomegranate Syrup",
      "Raspberry Syrup",
      "Rose Syrup",
      "Tamarind Syrup"
    ],
    "Za'atars": [
      "Homemade Za_atar",
      "Jor Za_atar",
      "Manakeesh Za_atar",
      "Pal Za_atar 700g",
      "Pal Za_atar BM 700g",
      "Pal Za_atar",
      "Shami Za_atar"
    ]
  };
  final Map<String, List<String>> catar = {
    "أواني زجاجية للأعشاب": [
      "أوراق الغار",
      "البابونج",
      "الكركديه",
      "خلطة الأعشاب"
    ],
    "الزيوت": [
      "زيت الحبة السوداء بالصندوق",
      "زيت الحبة السوداء",
      "زيت الخروع بالصندوق",
      "زيت الخروع",
      "زيت جوز الهند بالصندوق",
      "زيت جوز الهند",
      "زيت الخردل بالصندوق",
      "زيت الخردل",
      "زيت السمسم بالصندوق",
      "زيت السمسم"
    ],
    "زجاجات خل عضوي": [
      "خل التفاح",
      "خل البلسميك",
      "خل العنب الأحمر",
      "خل العنب الأبيض"
    ],
    "أواني زجاجية للبقول": [
      "الحمص",
      "البرغل الأبيض الخشن",
      "الفول الباذنجاني",
      "الفريكة الناعمة",
      "البرغل الأحمر الناعم",
      "البرغل الأبيض الناعم",
      "فاصوليا الليمون",
      "اللوبيا",
      "المفتول",
      "بذور الفشار",
      "العدس الأحمر المقسوم",
      "الفاصوليا الصغيرة",
      "الفول المقسوم",
      "فاصوليا بيضاء",
      "العدس الكامل"
    ],
    "صور مرشحات SQR": [
      "البهارات الجميلة المطحونة",
      "اليانسون المطحون SQRS",
      "بذور اليانسون SQRS",
      "بيكنغ بودر SQRS",
      "توابل البرياني SQRS",
      "الفلفل الأسود المطحون SQRS",
      "الفلفل الأسود المطحون SQRS",
      "بذور الفلفل الأسود SQRS",
      "بذور السودان SQRS",
      "توابل كاجون SQRS",
      "الكراوية المطحونة SQRS",
      "الهال المطحون SQRS",
      "بذور الهال SQRS",
      "بذور الشيا SQRS",
      "توابل الدجاج SQRS",
      "القرفة المطحونة SQRS",
      "ملح الحمضيات SQRS",
      "بذور القرنفل SQRS",
      "القرنفل المطحون SQRS",
      "الكزبرة المطحونة SQRS",
      "بذور الكزبرة SQRS",
      "الكمون المطحون SQRS",
      "توابل الكاري SQRS",
      "توابل السمك SQRS",
      "بذور الكتان SQRS",
      "الثوم المطحون SQRS",
      "الزنجبيل المطحون SQRS",
      "توابل الشواء والباربيكيو SQRS",
      "ملح هيمالايا SQRS",
      "توابل الكباب SQRS",
      "توابل الكبسة SQRS",
      "توابل الكبة SQRS",
      "توابل الكفتة SQRS",
      "توابل المقلوبة SQRS",
      "توابل اللحم SQRS",
      "ملين اللحم SQRS",
      "توابل مختلطة SQRS",
      "جوزة الطيب المطحونة SQRS",
      "البصل المطحون SQRS",
      "زعتر SQRS",
      "بابريكا المطحونة SQRS",
      "النعناع الجاف SQRS",
      "توابل البيتزا SQRS",
      "بذور الكينوا السوداء SQRS",
      "بذور الكينوا البيضاء SQRS",
      "الفلفل الحار المطحون SQRS",
      "الفلفل الحار المطحون SQRS",
      "توابل السبع SQRS",
      "توابل الشاورما SQRS",
      "سماق SQRS",
      "توابل التكة SQRS",
      "الكركم المطحون SQRS",
      "بودرة الفانيليا SQRS",
      "الفلفل الأبيض المطحون SQRS",
      "بذور الفلفل الأبيض SQRS"
    ],
    "زجاجات شراب": [
      "شراب اللوز",
      "شراب المشمش",
      "شراب الخروب",
      "شراب الزنجبيل",
      "شراب الجلاب",
      "شراب الرمان",
      "شراب التوت",
      "شراب الورد",
      "شراب التمر الهندي"
    ],
    "زعتر": [
      "زعتر محلي",
      "زعتر جور",
      "زعتر مناقيش",
      "زعتر فلسطيني 700 جرام",
      "زعتر فلسطيني BM 700 جرام",
      "زعتر فلسطيني",
      "زعتر شامي"
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Text(
              isEnglish ? title ?? "Categories" : title ?? "أصنافنا",
              style: const TextStyle(
                fontSize: 35,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: items == null ? cat.length : items!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    if (items == null) {
                      final key = isEnglish
                          ? cat.keys.elementAt(index)
                          : catar.keys.elementAt(index);
                      final keyEn = cat.keys.elementAt(index);
                      List<dynamic>? firsten = cat[keyEn];

                      List<dynamic>? first = isEnglish ? cat[key] : catar[key];
    
                      String firstfen = firsten!.first;

                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => Categories(
                                  items: first,
                                  title: key,
                                  titleEn: keyEn,
                                  itemsEn: firsten)));
                        },
                        child: GridTile(
                            footer: Text(
                              key,
                              style: const TextStyle(
                                  color: Colors.amber,
                                  backgroundColor: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            child: Image.asset(
                              "assets/${cat.keys.elementAt(index)}/$firstfen.jpg",
                              
                            )),
                      );
                    } else {
                      return GridTile(
                          footer: Text(
                            items![index],
                            style: const TextStyle(
                                color: Colors.amber,
                                backgroundColor: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          child: Image.asset(
                            "assets/$titleEn/${itemsEn![index]}.jpg",
                          
                          ));
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
