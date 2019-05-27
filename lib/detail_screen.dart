import 'package:flutter/material.dart';
import 'package:food_recipes/model/food_arguments.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail';

  Widget _contentText(data) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            data.food,
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.bold,
                color: Colors.black.withAlpha(170)),
            textAlign: TextAlign.left,
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 5),
            child: Text("Ingredients:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ),
          Text(data.ingredients, style: TextStyle(fontFamily: 'ProductSans')),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 5),
            child: Text("Cooking Steps:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ),
          Text(data.cookingSteps,
              style: TextStyle(fontFamily: 'ProductSans'),
              textAlign: TextAlign.justify)
        ],
      ),
    );
  }

  Widget _contentImage(data) {
    return Hero(
      tag: "hero-${data.index.toString()}",
      child: Container(
        alignment: Alignment.topCenter,
        child: Image.asset(
          "assets/images/${data.type}/${data.image}",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final FoodArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
            title: Text('Detail Recipe',
                style: TextStyle(fontFamily: 'ProductSans')),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[_contentImage(args), _contentText(args)],
          ),
        ));
  }
}
