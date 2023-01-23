class TravelData {
  String name;
  String location;
  String url;

  TravelData(this.name, this.location, this.url);

  static List<TravelData> generateTravelBean() {
    return [
      TravelData("Peach", "Spain ES1", "assets/images/top1.jpg"),
      TravelData("Grassland", "Spain ES2", "assets/images/top2.jpg"),
      TravelData("Starry sky", "Spain ES3", "assets/images/top3.jpg"),
      TravelData("Beauty Pic", "Spain ES4", "assets/images/top4.jpg"),
    ];
  }

  static List<TravelData> generateMostPopularBean() {
    return [
      TravelData("Peach", "Spain ES", "assets/images/bottom1.jpg"),
      TravelData("Grassland", "Spain ES", "assets/images/bottom2.jpg"),
      TravelData("Starry sky", "Spain ES", "assets/images/bottom3.jpg"),
      TravelData("Beauty Pic", "Spain ES", "assets/images/bottom4.jpg"),
    ];
  }
}
