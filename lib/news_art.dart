class NewsArt {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsCnt;
  String newsUrl;

  NewsArt(
      {required this.imgUrl,
      required this.newsHead,
      required this.newsDesc,
      required this.newsCnt,
      required this.newsUrl});

  static fromAPItoApp(Map<String, dynamic> article) {
    return NewsArt(
      imgUrl: article["urlToImage"] ??
          "https://t4.ftcdn.net/jpg/01/67/74/79/360_F_167747932_NE1da5cf9FM30QExtlFjbmk9ypItoJl2.jpg",
      newsHead: article["title"] ?? "--",
      newsDesc: article["description"] ?? "--",
      newsCnt: article["content"] ?? "--",
      newsUrl: article["url"] ??
          "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en",
    );
  }
}
