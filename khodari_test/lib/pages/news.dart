import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:khodari_test/pages/whole_news.dart';
import 'package:khodari_test/signin/signin.dart';
import 'package:khodari_test/utils/constants.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<DocumentSnapshot> _documents = [];
  @override
  void initState() {
    super.initState();
    _fetchDocuments();
    _documents = _documents.reversed.toList();
    isShow = false;
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
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const FirebaseAuthForm()));
              },
              child: const Text("SignIn"))
        ],
      ),
      body: _documents.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              shrinkWrap: true,
              itemCount: _documents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20, crossAxisCount: 2),
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => WholeNews(
                            url: _documents[index]["DownloadUrl"],
                            title: _documents[index]["title"],
                            content: _documents[index]["Content"])));
                  },
                  child: Column(
                    children: [
                      Text(
                        _documents[index]["title"],
                        style: const TextStyle(
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: CachedNetworkImage(
                         
                          fit: BoxFit.cover,
                          
                          imageUrl: _documents[index]["DownloadUrl"] as String,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) {
                            return const Icon(Icons.error);
                          },
                        ),
                      )
                    ],
                  ),
                );
              }),
    );
  }
}
