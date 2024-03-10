import 'package:flutter/material.dart';
import 'package:khodari_test/utils/constants.dart';

class OurProducts extends StatefulWidget {
  const OurProducts({super.key});

  @override
  State<OurProducts> createState() => _OurProductsState();
}

class _OurProductsState extends State<OurProducts> {
  static List<String> products = [
    "Herbs Shell Jars",
    "Oils",
    "Organic Viegar bottles",
    "pulses shell Jars",
    "SQR Shakers Images",
    "syrup Bottles",
    "Za'atars"
  ];
  static List<String> productAr = [
    "أواني زجاجية للأعشاب",
    "الزيوت",
    "زجاجات خل عضوي",
    "أواني زجاجية للبقول",
    "صور مرشحات SQR",
    "زجاجات شراب",
    "زعتر"
  ];
  static List<String> imgs = [
    "assets/HerbsShellJars/BayLeaves.jpg",
    "assets/Oils/Black Seed Oil with box.jpg",
    "assets/Organic Vinegar bottles/Apple Vinegar.jpg",
    "assets/Pulses Shell Jars/Chick Peas.jpg",
    "assets/SQR Shakers Images/Allspice Ground SQRS.jpg",
    "assets/Syrup Bottles/Almond Syrup.jpg",
    "assets/Za'atars/Homemade Za_atar.jpg"
  ];

  final List<bool> _ishoverd = List.filled(products.length, false);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        isEnglish ? "Our Products" : "منتجاتنا",
        style: const TextStyle(
          fontSize: 35,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold,
        ),
      ),
      GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, crossAxisSpacing: 10, mainAxisSpacing: 30),
        itemCount: products.length,
        itemBuilder: (context, index) => MouseRegion(
          onHover: (event) {
            setState(() {
              _ishoverd[index] = true;
            });
          },
          onExit: (event) {
            setState(() {
              _ishoverd[index] = false;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            transform: Matrix4.identity()..scale(_ishoverd[index] ? 1 : 0.8),
            child:
            Column(children: [
              Expanded(
                child: Image.asset(
                   imgs[index],
                   ),
              ),
                 Expanded(
                  
                   child: Text(isEnglish?products[index]:productAr[index],
                    style: const TextStyle( color: Colors.black,),textAlign: TextAlign.center,),
                 ),

            ],)
            //  GridTile(
            //   footer: Text(isEnglish?products[index]:productAr[index],
            //       style: const TextStyle( color: Colors.black,),textAlign: TextAlign.center,),
            //   child: 
               
            //   ),
            // ),
          ),
        ),
      )
    ]);
  }
}
