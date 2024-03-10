import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:khodari_test/utils/constants.dart';

class WholeNews extends StatelessWidget {
  const WholeNews({super.key ,required this.url,required this.title,required this.content});
  final String url;
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            width: w,
            height: h!/4,
            child: CachedNetworkImage(
                              fit: BoxFit.contain,
                              imageUrl:  url,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) {
                                return const Icon(Icons.error);
                              },
            
                            ),
          ),
                          Text("$title :" ,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                          Text("$content : ")
        ],
      ),
    );
  }
}
