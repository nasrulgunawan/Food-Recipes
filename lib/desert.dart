import 'package:flutter/material.dart';
import 'package:food_recipes/detail_screen.dart';
import 'package:food_recipes/model/foods.dart';
import 'package:food_recipes/model/food_arguments.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

class Desert extends StatefulWidget {
  Desert({Key key}) : super(key: key);

  @override
  _DesertState createState() => _DesertState();
}

class _DesertState extends State<Desert> {
  Future<List<Foods>> _getFoods() async {
    return await rootBundle
        .loadString('assets/desert.json')
        .then((String foods) => json.decode(foods) as List)
        .then((List food) {
      List<Foods> listFoods = [];
      food.forEach((index) => listFoods.add(Foods.getJsonParser(index)));
      return listFoods;
    });
  }

  Widget _listImage(index, data) {
    return Hero(
      tag: "hero-${index.toString()}",
      child: Container(
        alignment: Alignment.topCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5)),
          child: Image.asset(
            "assets/images/dessert/${data.image}",
            fit: BoxFit.cover,
            height: 120,
          ),
        ),
      ),
    );
  }

  Widget _listText(data) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        data.food,
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black.withAlpha(175),
            fontFamily: 'ProductSans'),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _desert() {
    return Container(
      child: FutureBuilder(
          future: _getFoods(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
                if (snapshot.hasError)
                  return Text('Error: ${snapshot.error}');
                return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: Card(
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              _listImage(index, snapshot.data[index]),
                              Expanded(
                                flex: 1,
                                child: _listText(snapshot.data[index]),
                              )
                            ],
                          ),
                        ),
                        onTap: () =>
                            _goToDetail(context, index, snapshot.data[index]),
                      );
                    });
            }

            return null;
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _desert(),
    );
  }
}

void _goToDetail(BuildContext context, index, data) {
  final snackBar = SnackBar(content: Text("Recipe: ${data.food} Clicked!"));

  Navigator.pushNamed(context, DetailScreen.routeName,
      arguments: FoodArguments(
          index, data.food, data.image, data.ingredients, data.cookingSteps, 'dessert'));

  Scaffold.of(context).showSnackBar(snackBar);
}
