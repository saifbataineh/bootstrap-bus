import 'package:flutter/material.dart';
import 'package:khodari_test/homePage/home.dart';
import 'package:khodari_test/pages/about_us.dart';
import 'package:khodari_test/pages/contact_us.dart';
import 'package:khodari_test/pages/news.dart';
import 'package:khodari_test/pages/our_producs_page.dart';
import 'package:khodari_test/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: desktopNavBar(),
      mobile: mobileNavBar(),
    );
  }

  Widget mobileNavBar() {
    return Container(
      
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
                       navButton(isEnglish ? "Home" : "رئيسية", const Home(),7),
              navButton(isEnglish ? " us" : "نحن", AboutUs(),7),
              navButton(isEnglish ? " products" : "منتجات", Categories(),7),
              navButton(
                isEnglish ? "contact " : "تواصل ",
                ContactUs(),7
              ),
              navButton(
                isEnglish ? "News" : " أخبار",
                News(),
                7
                
              ),
              TextButton(
                onPressed: () {
                  isEnglish == false ? isEnglish = true : isEnglish = false;
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (ctx) => const Home()),
                      (route) => false);
                },
                child: Text(
                  
                  isEnglish ? "العربية" : "English",
                  style: TextStyle(fontSize: 10,color: Colors.black),
                ),
              ),
          navLogo(),
        ],
      ),
    );
  }

  Widget desktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
           Text(isEnglish?"Customer Service +952004697269  ":"خدمة العملاء +952004697269",style: TextStyle(color: Colors.black)),
          Row(
            textDirection:isEnglish?TextDirection.ltr: TextDirection.rtl,
            children: [
              navButton(isEnglish? "Home":"الرئيسية", const Home(),18),
              navButton(isEnglish? "About us": "نبذة عنا", AboutUs(),18),
              navButton(isEnglish? "Our products":"منتجاتنا", Categories(),18),
              navButton(isEnglish?"contact us": "تواصل معنا",ContactUs(),18 ),
              navButton(isEnglish? "News": "اخر الأخبار",News(),18),
              TextButton(
                  onPressed: () {
                    isEnglish == false ? isEnglish = true : isEnglish = false;
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (ctx) => const Home()),
                        (route) => false);
                  },
                  child: Text(isEnglish ? "العربية" : "English",style: TextStyle(color: Colors.black),),),
                            ],
          ),
        ],
      ),
    );
  }

  Widget navButton(String text, Widget page, double fontsize) {
    return InkWell(
      
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => page));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          text,
          style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: fontsize),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 110,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        "assets/bluemill.png",
      ))),
    );
  }
}
