import 'package:adventure_app/models/adventure.dart';
import 'package:adventure_app/screens/detailscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
            top: 20.0, right: 20.0, left: 20.0, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Find Location',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    fontSize: 22,
                    letterSpacing: -0.5,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.help),
                  onPressed: () {},
                ),
              ],
            ),
            Text(
              'for your adventure',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: -0.5,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFd8d8d8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 28,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Start your search",
                          hintStyle: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Popular'),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.map_outlined,
                      color: Colors.redAccent,
                    ),
                    Text('Show Map',
                        style: TextStyle(
                          color: Colors.redAccent,
                        ))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: adventure.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CardItems(
                      imagePath: adventure[index].imagePath,
                      title: adventure[index].adventure,
                      amount: adventure[index].amount,
                      rating: adventure[index].rating,
                      tag: adventure[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    adventure: adventure[index],
                                  )),
                        );
                      },
                    );
                  }),
            ),
          ],
        ),
      )),
    );
  }
}

class CardItems extends StatelessWidget {
  final String imagePath;
  final int amount;
  final Function onTap;
  final String title;
  final Adventure tag;
  final String rating;
  const CardItems({
    Key key,
    this.rating,
    this.onTap,
    this.tag,
    this.imagePath,
    this.title,
    this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 100,
        // color: Colors.red,
        child: Row(
          children: [
            Container(
                height: 100,
                width: 100,
                child: Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Hero(tag: tag, child: Image.asset(imagePath))))),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                height: 100,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        Icon(Icons.bookmark)
                      ],
                    ),
                    Text("⭐ ${rating}"),
                    Row(
                      children: [
                        Text(
                          "\$${amount}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(" / night")
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
