import 'package:flutter/material.dart';

//  Final App - Subscribe Like & Share 
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundWigdet(width: width),
          ShoeWidget(width: width),
          NikeGreyLogoWidget(width: width, height: height),
          Positioned(
            right: width * 0.15,
            bottom: height * 0.18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[InfoCardWidget(), CartButtonWidget()],
            ),
          ),
          Positioned(
            height: kToolbarHeight,
            width: width,
            child: AppBarWidget(width: width),
          ),
          DividerWidget(width: width),
          NikeTextWidget(height: height, width: width),
          DescWidget(height: height, width: width)
        ],
      ),
    );
  }
}

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Colors.blue,
        hoverColor: Colors.purple,
        textColor: Colors.white,
        child: Text("ADD TO CART"),
        onPressed: () {},
      ),
    );
  }
}

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Air Max",
                  style: Theme.of(context).textTheme.display2,
                ),
                Text(
                  "270",
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.black),
                ),
                Text(
                  "\$199",
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(width: 20),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.indigo,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 15,
                  height: 15,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DescWidget extends StatelessWidget {
  const DescWidget({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height * 0.6,
      right: width * 0.35,
      child: Container(
        width: width * 0.16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "2019",
              style: TextStyle(
                color: Colors.white54,
                fontFamily: "",
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "AIR MAX",
                style: TextStyle(
                  color: Colors.white54,
                  fontFamily: "",
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "270",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white54,
                fontFamily: "",
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NikeTextWidget extends StatelessWidget {
  const NikeTextWidget({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height * 0.25,
      left: width * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "NIKE",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 150,
              letterSpacing: 10,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "JUST DO IT",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 100,
              letterSpacing: 10,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      width: width,
      child: Divider(
        color: Colors.white,
        thickness: 0.5,
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: width * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  "assets/images/nike_logo.png",
                  width: 80,
                  color: Colors.white,
                ),
                Text(
                  "New Arrivals",
                ),
                Text(
                  "Men",
                ),
                Text(
                  "Women",
                ),
                Text(
                  "Boys",
                ),
                Text(
                  "Girls",
                )
              ],
            ),
          ),
          Container(
            width: width * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NikeGreyLogoWidget extends StatelessWidget {
  const NikeGreyLogoWidget({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: width * 0.06,
      top: height * 0.18,
      child: Image.asset(
        "assets/images/nike_logo_grey.png",
        height: 200,
      ),
    );
  }
}

class ShoeWidget extends StatelessWidget {
  const ShoeWidget({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: width * 0.15,
      child: Image.asset(
        "assets/images/shoe.png",
        fit: BoxFit.cover,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

class BackgroundWigdet extends StatelessWidget {
  const BackgroundWigdet({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                "assets/images/background.jpg",
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
              Container(
                color: Color.fromRGBO(0, 105, 233, 0.8),
              ),
            ],
          ),
        ),
        Container(
          width: width * 0.3,
          color: Colors.white,
        )
      ],
    );
  }
}
