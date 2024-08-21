import 'package:flutter/material.dart';
import 'package:news_app2/fetch_news.dart';
import 'package:news_app2/news_art.dart';
import 'package:news_app2/news_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  bool isLoading = true;

  late NewsArt newsArt;

  getNews() async {
    newsArt = await FetchNews.fetchNews();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.h,
        title: Center(
          child: AutoSizeText(
            "News App",
            maxFontSize: 40,
            style: TextStyle(
                color: const Color.fromARGB(255, 141, 17, 9),
                fontWeight: FontWeight.bold,
                fontSize: 30.sp),
          ),
        ),
      ),
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            setState(() {
              isLoading = true;
            });
            getNews();
          },
          itemBuilder: (context, index) {
            return isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : NewsContainer(
                    imgUrl: newsArt.imgUrl,
                    newsCnt: newsArt.newsCnt,
                    newsHead: newsArt.newsHead,
                    newsDesc: newsArt.newsDesc,
                    newsUrl: newsArt.newsUrl);
          }),
    );
  }
}
