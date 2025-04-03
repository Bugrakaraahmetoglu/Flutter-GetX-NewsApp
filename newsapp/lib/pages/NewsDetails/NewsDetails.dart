import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Model/NewsModel.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsModel news;
  const NewsDetailsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                   InkWell(
                    onTap: () {
                      Get.back();
                    },
                     child: Container(
                      child: Row(
                        children: [
                           Icon(Icons.arrow_back_ios_new),
                            SizedBox(width: 10),
                            Text("Back")
                        ],
                      ),
                     ),
                   )
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 330,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            news.urlToImage!,
                            fit: BoxFit.cover,
                               height: double.infinity,
                          ),
                          ),
                        ),
                        
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  news.title!,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(children: [
                  Text("${news.publishedAt}",
                  style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],),
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text("${news.author}",
                    style: TextStyle(
                    fontSize: 18,   
                    color: Theme.of(context).colorScheme.secondaryContainer,         
                  ),
                  ),
                  ],
                ),
                SizedBox(height: 20),
                 Row(
                   children: [
                     Flexible(
                       child: Text("${news.description}",
                          style: TextStyle(
                          fontSize: 18,   
                          color: Theme.of(context).colorScheme.secondaryContainer,         
                        ),
                        ),
                     ),
                   ],
                 ),
              ],
            ),
          ),
          ),
      ),
    );
  }
}