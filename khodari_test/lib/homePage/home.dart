import 'package:flutter/material.dart';
import 'package:khodari_test/homePage/about_us.dart';
import 'package:khodari_test/homePage/countries.dart';
import 'package:khodari_test/homePage/lastest_news.dart';
import 'package:khodari_test/homePage/panel.dart';
import 'package:khodari_test/homePage/our_p.dart';
import 'package:khodari_test/utils/constants.dart';
import 'package:khodari_test/homePage/nar_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return   Scaffold(
     
 
      body: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(

              children: [
                Stack(
                  children: [
                    Container(
                      
                       
                      height: h!-h!/4+50,
                      child: Positioned
                      
                      (top: 0,
                        child: Panel()),
                
                    )
                    ,NavBar(),
                  ],
                ),
                LNews(),
                OurProducts(),
                AboutUs(),
                Countries()
              ],
            ),

          

        
          ],
        ),
      ),
    );
  }
}
