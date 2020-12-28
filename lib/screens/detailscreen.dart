import 'package:adventure_app/models/adventure.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Adventure adventure;

  const DetailScreen({Key key, this.adventure}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool bookmared = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.white,
      bottomSheet: Container(
        padding: EdgeInsets.all(20),
        height: 100,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            Text(
              '\$ ${widget.adventure.amount}/ night',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent),
                // color: Colors.blueAccent,
                child: Center(
                    child: Text(
                  'Book Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
      body: Hero(
        tag: widget.adventure,
        child: Container(
            decoration: BoxDecoration(
                // color: Colors.amber,
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage(widget.adventure.imagePath))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withAlpha(100)),
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.22,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    // height: 400,
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                    // constraints: BoxConstraints(minHeight: 420),
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(40))),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.adventure.adventure,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28,
                                      letterSpacing: -0.7,
                                      fontWeight: FontWeight.bold)),
                              IconButton(
                                icon: Icon(bookmared
                                    ? Icons.bookmark
                                    : Icons.bookmark_outline),
                                onPressed: () {
                                  setState(() {
                                    if (bookmared == false) {
                                      bookmared = true;
                                    } else {
                                      bookmared = false;
                                    }
                                    // bookmared = true;
                                  });
                                },
                              )
                            ],
                          ),
                          Text(
                            "⭐" + widget.adventure.rating,
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            widget.adventure.desc,
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: -0.2,
                            ),
                          ),

                          // Text(widget.adventure.rating),
                          // Text(widget.adventure.rating),
                          // Text(widget.adventure.rating),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
