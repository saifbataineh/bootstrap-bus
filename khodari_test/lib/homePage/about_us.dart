import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khodari_test/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: desktopAboutUs(),
      mobile: mobileAboutUs(),
    ); }
    Widget desktopAboutUs(){
      return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(isEnglish? "About Us":"نبذة عنا",style: const TextStyle(fontWeight: FontWeight.normal,fontStyle: FontStyle.italic,fontSize:35,decoration: TextDecoration.underline ),),

        Stack(children: [SizedBox(width: w, height: h!*0.95, child: SvgPicture.asset("assets/bg.svg",fit: BoxFit.fill,)),
         Positioned(top: h!/3,left: 100,child: Wrap(
           children: [ Text(
            isEnglish? "The Blue Mill Company began operating in 1977. Over the years, it has grown to become the largest manufacturer in Jordan in its field and produces more than 140 products.\n We are an industrial foods company that produces a wide range of spices, vinegar, rose water, orange blossom water, herbal syrups, syrups, sweets and legumes.\n We also produce a different range of spices that are packed daily in specially designed containers to maintain the freshness of the products,\n thus enhancing and adding a unique flavor to the best dishes prepared in the world.\n The Blue Mill employees are among the best and are constantly trained while providing excellent working conditions.\n We also care about farmers all over the world in order to choose the finest raw materials available.":
            "بدأت شركة الطاحونة الزرقاء العمل منذ عام 1977. و على مر السنين نمت لتصبح أكبر مُصنع في الأردن في مجال عملها و تنتج ما يزيد عن 140 منتج\n. نحن شركة للأغذية الصناعية ننتج مجموعة واسعة من التوابل والخل وماء الورد و ماء الزهر وشراب الأعشاب وشراب مركز وحلويات و بقوليا\nت. و ننتج ايضاً مجموعة مختلفة من التوابل التي تعبأ يومياً في عبوات مصممة خصيصا لإبقاء المنتجات طازجة،\n وبالتالي تعزيز وإضافة نكهة فريدة لأفضل الأطباق التي تعد في العالم.إن موظفي الطاحونة الزرقاء من افضل الموظفين ويتم تدريبهم باستمرار مع توفير ظروف عمل ممتازة.\n كما نهتم أيضا بالمزارعين في كافة أنحاء العالم من أجل اختيار أجود المواد الخام المتاحة."
           ,style: const TextStyle(fontSize: 16,color: Colors.black)
           ,textAlign: TextAlign.center,
           
           ),]
         ))
        ]),
      ],
    );
    }
    Widget mobileAboutUs(){
      return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(isEnglish? "About Us":"نبذة عنا",style: const TextStyle(fontWeight: FontWeight.normal,fontStyle: FontStyle.italic,fontSize:35,decoration: TextDecoration.underline ),),

        Stack(children: [SizedBox(width: w, height:  h!*0.95, child: SvgPicture.asset("assets/bg.svg",fit: BoxFit.fill,)),
         Positioned(
          top: h!/3,
          left: 0,
          right: 0,
           child: Text(
            
            isEnglish? "The Blue Mill Company began operating in 1977. Over the years, it has grown to become the largest manufacturer in Jordan in its field and produces more than 140 products.\n We are an industrial foods company that produces a wide range of spices, vinegar, rose water, orange blossom water, herbal syrups, syrups, sweets and legumes.\n We also produce a different range of spices that are packed daily in specially designed containers to maintain the freshness of the products,\n thus enhancing and adding a unique flavor to the best dishes prepared in the world.\n The Blue Mill employees are among the best and are constantly trained while providing excellent working conditions.\n We also care about farmers all over the world in order to choose the finest raw materials available.":
            "بدأت شركة الطاحونة الزرقاء العمل منذ عام 1977. و على مر السنين نمت لتصبح أكبر مُصنع في الأردن في مجال عملها و تنتج ما يزيد عن 140 منتج\n. نحن شركة للأغذية الصناعية ننتج مجموعة واسعة من التوابل والخل وماء الورد و ماء الزهر وشراب الأعشاب وشراب مركز وحلويات و بقوليا\nت. و ننتج ايضاً مجموعة مختلفة من التوابل التي تعبأ يومياً في عبوات مصممة خصيصا لإبقاء المنتجات طازجة،\n وبالتالي تعزيز وإضافة نكهة فريدة لأفضل الأطباق التي تعد في العالم.إن موظفي الطاحونة الزرقاء من افضل الموظفين ويتم تدريبهم باستمرار مع توفير ظروف عمل ممتازة.\n كما نهتم أيضا بالمزارعين في كافة أنحاء العالم من أجل اختيار أجود المواد الخام المتاحة."
           ,style: const TextStyle(fontSize: 16,color: Colors.black)
           ,textAlign: TextAlign.center,
           softWrap: true,
           
           ),
         )
        ]),
      ],
    );
    }
    
    
  
}
