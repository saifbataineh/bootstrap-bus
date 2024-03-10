import 'package:flutter/material.dart';
import 'package:khodari_test/homePage/nar_bar.dart';
import 'package:khodari_test/utils/constants.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class AboutUs extends StatelessWidget {
  AboutUs({super.key});
  final _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
    mute: false,
    showControls: true,
    showFullscreenButton: true,
  ));
  final _controller2 = YoutubePlayerController(
      params: const YoutubePlayerParams(
    mute: false,
    showControls: true,
    showFullscreenButton: true,
  ));

  @override
  Widget build(BuildContext context) {
    _controller.cueVideoById(videoId: "THu-c4Mxzn4");
    _controller2.cueVideoById(videoId: "Hlzppvxk5yg");
    return Center(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
               NavBar(),
              Row(
                textDirection: isEnglish? TextDirection.ltr:TextDirection.rtl,
                children: [
                  Container(
                      margin: const EdgeInsets.all(30),
                      width: w! / 3,
                      height: h! / 2,
                      child: YoutubePlayer(controller: _controller)),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        isEnglish?
                        "Our goal and vision":"هدفنا و رؤيتنا",
                        textDirection: isEnglish? TextDirection.ltr:TextDirection.rtl,
                        style: const TextStyle(
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Wrap(children: [
                        Text(isEnglish?
                            "The Blue Mill Company began operating in 1977.\n Over the years, it has grown to become the largest manufacturer in Jordan in its field and produces more than 140 products.\nWe are an industrial foods company that produces a wide range of spices, vinegar, rose water, orange blossom water, herbal syrups,\n syrups, sweets and legumes.\n We also produce a different range of spices that are packed daily in specially designed containers to\n maintain the freshness of the products, thus enhancing and adding a unique flavor to the best dishes prepared in the world.\nThe Blue Mill employees are among the best and are constantly trained while providing excellent working conditions.\n We also care about farmers all over the world in order to choose the finest raw materials available.\nIn 1994, research was conducted and a new management was formed with the aim of monitoring,\n implementing and promoting quality and hygiene standards.\n Recently, a new laboratory was formed to ensure ideal conditions for raw materials,\n and thus production capacity was doubled due to the superior care for quality.":
                            "ببدأت شركة الطاحونة الزرقاء العمل منذ عام 1977.\n و على مر السنين نمت لتصبح أكبر مُصنع في الأردن في مجال عملها و تنتج ما يزيد عن 140 منتج\n.نحن شركة للأغذية الصناعية ننتج مجموعة واسعة من\n التوابل والخل وماء الورد و ماء الزهر وشراب الأعشاب وشراب مركز وحلويات و بقوليات.\n و ننتج ايضاً مجموعة مختلفة من التوابل التي تعبأ يومياً في عبوات مصممة خصيصا لإبقاء المنتجات طازجة،\n وبالتالي تعزيز وإضافة نكهة فريدة لأفضل الأطباق\n التي تعد في العالم\n.إن موظفي الطاحونة الزرقاء من افضل الموظفين ويتم تدريبهم باستمرار مع توفير ظروف عمل ممتازة.\n كما نهتم أيضا بالمزارعين في كافة أنحاء العالم\n من أجل اختيار أجود المواد الخام المتاحة.في عام 1994 تم إجراء أبحاث وتشكيل إدارة جديدة بهدف مراقبة وتطبيق وتعزيز معايير الجودة والنظافة.\n ومؤخرا تم تشكيل مختبر جديد لتأمين الظروف المثالية للمواد الخام، وبالتالي تضاعفت الطاقة الإنتاجية نظرا للرعاية الفائقة للجودة."
                            ,textDirection: isEnglish? TextDirection.ltr:TextDirection.rtl,textAlign: TextAlign.center,)
                      ])
                    ],
                  ),
                  
                ],
              ),
               Row(
                  textDirection: isEnglish? TextDirection.ltr:TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                   children: [Column(children: [
                  Container(
                    margin: const EdgeInsets.all(30),
                    child:   Column(
                   
                      children: [
                        Text(
                          isEnglish?
                          "Our Values ":"قيمنا",
                          textDirection: isEnglish? TextDirection.ltr:TextDirection.rtl,
                          style: const TextStyle(
                          
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          isEnglish?
                          "We have obtained ISO 9002 certification as a result of our commitment to quality over the past years.\n This is due to increasing demands that exceed the available production capacity.\n The company brought new production machines with the highest technological levels.\n The Blue Mill provides the best in terms of product quality, pricing, packaging, delivery and customer service,\n by working closely with specialized employees in all fields\n such as production, marketing, promotion, distribution and after-sales services.\n Providing customer satisfaction and loyalty is one of our most important priorities.\n The quality of production and services provided is unprecedented. With Blue Mill you definitely get your money's worth!":
                          "لقد حصلنا على شهادة ISO 9002 نتيجة التزامنا بالجودة خلال السنوات الماضية. ويرجع ذلك إلى\n الطلبات المتزايدة والتي تجاوزت الطاقة الإنتاجية المتاحة؛ قامت الشركة بإحضار آلات إنتاج جديدة\n بأعلى المستويات التكنولوجية. الطاحونة الزرقاء توفر الأفضل من حيث نوعية المنتجات\n والتسعير والتعبئة والتغليف والتوصيل وخدمة العملاء، وذلك من خلال العمل بشكل وثيق\n مع الموظفين المتخصصين في جميع المجالات\n مثل الإنتاج والتسويق والترويج والتوزيع وخدمات ما بعد البيع.\nان توفير رضى وولاء العميل من أهم اولوياتنا.\n فان نوعية الإنتاج والخدمات المقدمة لم يسبق لها مثيل. مع الطاحونة الزرقاء بالتأكيد تحصل على قيمة أموالك!"
                          ,textDirection: isEnglish? TextDirection.ltr:TextDirection.rtl,textAlign: TextAlign.center,                 )
                      ],
                    ),
                  ),
                  
                ],)
                    ,Container(
                      margin: const EdgeInsets.all(30),
                      width: w! / 3,
                      height: h! / 2,
                      child: YoutubePlayer(controller:_controller2 )),
                
                ],
              )
            , Text(
              isEnglish?
                        "Our quality":"جودتنا",
                        style: const TextStyle(
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(isEnglish? "We are Adnan Al-Khudari and Sons Trading Company, a company specialized in manufacturing and packaging food. We strive to maintain the highest level of work quality and production efficiency. We are associated with the best levels to give priority to the safety and health of our employees and equipment safety. We focus on occupational safety and health in every area of work while protecting the worker and visitors in our facility.":
                      "نحن شركة عدنان الخضري و أولاده التجارية شركة متخصصة بتصنيع و تعبئة الاغذية. نسعى للحفاظ على أعلى مستوى في الجودة العمل و كفاءة الإنتاج.ترتبط مع أفضل المستويات لإضفاء الطابع الرئيسي على سلامة وصحة موظفينا وسلامة المعدات ونركز على السلامة والصحة المهنية في كل منطقة من العمل مع حماية العامل والزوار في منشأتنا .",
                      textDirection: isEnglish? TextDirection.ltr:TextDirection.rtl
                      ) ,
                      Text(
                      isEnglish?
                        "Our Certificates":"شهاداتنا",
                        style: const TextStyle(
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset("assets/oc.png")
            ],
          ),
        ),
      ),
    ));
  }
}
