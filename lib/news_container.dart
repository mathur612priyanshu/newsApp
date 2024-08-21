import 'package:flutter/material.dart';
import 'package:news_app2/web_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_size_text/auto_size_text.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsCnt;
  String newsUrl;

  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newsHead,
      required this.newsDesc,
      required this.newsCnt,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.network(
            imgUrl,
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: AutoSizeText(
              newsHead,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              minFontSize: 22,
              maxFontSize: 30,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          // SizedBox(
          //   height: 5.h,
          // ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: AutoSizeText(
              newsDesc,
              maxLines: 3,
              minFontSize: 15,
              maxFontSize: 20,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Color.fromRGBO(146, 141, 141, 1), fontSize: 22),
            ),
          ),
          // SizedBox(
          //   height: 5.h,
          // ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: AutoSizeText(
              newsCnt,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              minFontSize: 15,
              maxFontSize: 21,
              style: TextStyle(fontSize: 21),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailViewScreen(newsUrl: newsUrl)));
                },
                child: AutoSizeText(
                  "Read more...",
                  minFontSize: 15,
                  maxFontSize: 25,
                  style: TextStyle(fontSize: 15.sp, color: Colors.blue),
                )),
          ),
        ],
      ),
    );
  }
}
