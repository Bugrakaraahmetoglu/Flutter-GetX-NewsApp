import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/pages/ArticalPage/Widgets/SearchWidget.dart';
import 'package:newsapp/pages/HomePage/Widgets/NewsTile.dart';
import 'package:newsapp/pages/NewsDetails/NewsDetails.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
             SearchWidget(),
             SizedBox(height: 20),
             Column(
              children: [
                 NewsTile(
                  ontap: () {
                      
                    },
                    imageUrl:
                        "https://ichef.bbci.co.uk/news/1024/cpsprodpb/7962/live/9074f3c0-0afe-11f0-93c7-431cc016c489.jpg.webp",
                    title:
                        "Germany leads defiance to Trump car tariffs, saying it 'will not give in",
                    time: "2h ago",
                    author: "BBC News",
                  ),
                  NewsTile(
                    ontap: () {
                    
                    },
                    imageUrl:
                        "https://ichef.bbci.co.uk/news/1024/cpsprodpb/9515/live/ae327650-0a66-11f0-8aaa-d93dcf13a0e5.jpg.webp",
                    time: "4h ago",
                    title:
                        "Turkey's opposition leader vows protests will continue 'in every city'",
                    author: "BBC News",
                  ),
                  NewsTile(
                    ontap: () {
                    
                    },
                    imageUrl:
                        "https://ichef.bbci.co.uk/news/1024/cpsprodpb/a4e2/live/f2c9e7f0-0a82-11f0-a145-69353f7d3b8c.jpg.webp",
                    time: "2h ago",
                    title: "Trump announces 25% tariffs on car imports to US",
                    author: "BBC News",
                  ),
                   NewsTile(
                    ontap: () {
                     
                    },
                    imageUrl:
                        "https://ichef.bbci.co.uk/news/1024/cpsprodpb/7962/live/9074f3c0-0afe-11f0-93c7-431cc016c489.jpg.webp",
                    title:
                        "Germany leads defiance to Trump car tariffs, saying it 'will not give in",
                    time: "2h ago",
                    author: "BBC News",
                  ),
                  NewsTile(
                    ontap: () {
                     
                    },
                    imageUrl:
                        "https://ichef.bbci.co.uk/news/1024/cpsprodpb/9515/live/ae327650-0a66-11f0-8aaa-d93dcf13a0e5.jpg.webp",
                    time: "4h ago",
                    title:
                        "Turkey's opposition leader vows protests will continue 'in every city'",
                    author: "BBC News",
                  ),
                  NewsTile(
                    ontap: () {
                     
                    },
                    imageUrl:
                        "https://ichef.bbci.co.uk/news/1024/cpsprodpb/a4e2/live/f2c9e7f0-0a82-11f0-a145-69353f7d3b8c.jpg.webp",
                    time: "2h ago",
                    title: "Trump announces 25% tariffs on car imports to US",
                    author: "BBC News",
                  ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}