import 'package:flutter/material.dart';

class Adventure {
  final String adventure;
  final String rating;
  final int amount;
  final String desc;
  final String imagePath;

  Adventure(
      {this.adventure, this.rating, this.amount, this.desc, this.imagePath});
}

Adventure bolderSkyLodges = new Adventure(
    adventure: "Bolder Sky Lodges",
    rating: '5',
    imagePath: "assets/images/canocrystale.jpg",
    amount: 10000,
    desc:
        "Bolder SkyLodges are located on a cliff and include two double bedrooms, designer kitchen , bathroom and a dining room with a view to die for.");

Adventure miamiSky = new Adventure(
    adventure: "Bolder Sky Lodges",
    rating: '4',
    imagePath: "assets/images/machupichu.jpg",
    amount: 10000,
    desc:
        "Bolder SkyLodges are located on a cliff and include two double bedrooms, designer kitchen , bathroom and a dining room with a view to die for.");

Adventure boldKi = new Adventure(
    adventure: "Bolder Sky Lodges",
    rating: '3',
    imagePath: "assets/images/snowsand.jpg",
    amount: 10000,
    desc:
        "Bolder SkyLodges are located on a cliff and include two double bedrooms, designer kitchen , bathroom and a dining room with a view to die for.");

Adventure boldKia = new Adventure(
    adventure: "Bolder Sky Lodges",
    rating: '2',
    imagePath: "assets/images/snowsand.jpg",
    amount: 10000,
    desc:
        "Bolder SkyLodges are located on a cliff and include two double bedrooms, designer kitchen , bathroom and a dining room with a view to die for.");

Adventure boldKib = new Adventure(
    adventure: "Bolder Sky Lodges",
    rating: '1',
    imagePath: "assets/images/snowsand.jpg",
    amount: 10000,
    desc:
        "Bolder SkyLodges are located on a cliff and include two double bedrooms, designer kitchen , bathroom and a dining room with a view to die for.");

List<Adventure> adventure = [
  bolderSkyLodges,
  miamiSky,
  boldKi,
  boldKia,
  boldKib
];
