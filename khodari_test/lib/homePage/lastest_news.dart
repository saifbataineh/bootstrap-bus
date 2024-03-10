import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:khodari_test/utils/constants.dart';

class LNews extends StatefulWidget {
  const LNews({super.key});

  @override
  State<LNews> createState() => _LNewsState();
}

class _LNewsState extends State<LNews> {
  List<DocumentSnapshot> _documents = [];
  @override
  void initState() {
    super.initState();
    _fetchDocuments();
  }

  void _fetchDocuments() async {
    final collection = FirebaseFirestore.instance.collection('users');
    final snapshot = await collection.get();
    setState(() {
      _documents = snapshot.docs;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> carouselItems = [
      _documents.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              mainAxisSize: MainAxisSize.max,
              children: [

                GridTile(
                    child: Image.network(
                  _documents[_documents.length - 1]["DownloadUrl"],
                  fit: BoxFit.fill,
                  height: h! - h! / 3 - 40,
                  width: w!,
                )),
                Container(
                  color: const Color.fromARGB(31, 0, 0, 0),
                  child: Text(_documents[_documents.length - 1]["title"],
                      style: const TextStyle(color: Colors.amber)),
                ),
              ],
            ),
      _documents.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GridTile(
                    child: Image.network(
                        _documents[_documents.length - 1]["DownloadUrl"],
                        height: h! - h! / 3 - 40,
                        fit: BoxFit.fill,
                        width: w)),
                Container(
                  color: const Color.fromARGB(31, 0, 0, 0),
                  child: Text(_documents[_documents.length - 1]["title"],
                      style: const TextStyle(color: Colors.amber)),
                ),
              ],
            ),
      _documents.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GridTile(
                    child: Image.network(
                  _documents[_documents.length - 1]["DownloadUrl"],
                  height: h! - h! / 3 - 40,
                  fit: BoxFit.fill,
                  width: w,
                )),
                Container(
                  color: const Color.fromARGB(31, 0, 0, 0),
                  child: Text(_documents[_documents.length - 1]["title"],
                      style: const TextStyle(color: Colors.amber)),
                ),
              ],
            ),
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
                           Text(
        isEnglish ? "Our News" : "اخر الاخبار",
        style: const TextStyle(
          fontSize: 35,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold,
        ),
      ),
          CarouselSlider(
            
              items: carouselItems,
              options: CarouselOptions(
                  viewportFraction: 1,
                  padEnds: true,
                  autoPlayAnimationDuration: Duration(seconds: 5),
                  scrollPhysics: BouncingScrollPhysics(),
                  height: h! - h! / 4,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  
      
                  onPageChanged: (index, reason) {})),
        ],
      ),
    );
  }
}