import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/controller/NewsController.dart';
import 'package:newsapp/pages/HomePage/Widgets/NewsTile.dart';
import 'package:newsapp/pages/HomePage/Widgets/TrandingCard.dart';
import 'package:newsapp/pages/NewsDetails/NewsDetails.dart';

class HoomePage extends StatefulWidget {
  
  const HoomePage({super.key});

  @override
  State<HoomePage> createState() => _HoomePageState();
}

class _HoomePageState extends State<HoomePage> {
  @override  
  Widget build(BuildContext context) {
 
    NewsController newsController = Get.put(NewsController());
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.dashboard),
                  ),
                  Text(
                    "News App",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      newsController.getNewsForYou();
                      newsController.getTrandingNews();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(()=>
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        newsController.trandingNewList.map((news) {
                          return TrandingCard(
                            ontap: () {
                              Get.to(NewsDetailsPage(news: news,));
                            },
                            imageUrl: news.urlToImage!,
                            title: news.title!,
                            author: news.author!,
                            tag: "Tranding no 1",
                            time: news.publishedAt!,
                          );
                        }).toList(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For You",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(()=>
                Column(
                  children:
                      newsController.newsForYoList
                          .map(
                            (e) => NewsTile(
                              imageUrl: e.urlToImage?? "Null",
                              title: e.title!,
                              time: e.publishedAt!,
                              author: e.author ?? "Unkown",
                              ontap: (){
                                Get.to(NewsDetailsPage(news: e,));
                              },
                            ),
                          )
                          .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
