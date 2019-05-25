
import 'package:flutter/material.dart';

// Check if we need to import anything
import 'package:hello_rectangle/category.dart';
// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    List<String> categories = [];
    categories.addAll(_categoryNames);

    // Create a list view of the Categories
    final listView = Container(
      color: Colors.blue[100],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Category(
                color: Colors.blue[100],
                text: categories[index],
                splash: _baseColors[index]
              )
            );
          },
        )
      )
    );

    // Create an App Bar
    final appBar = AppBar(
      title: Text(
        'Unit Converter', 
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black87
        ),
      ),
      elevation: 5.0,
      backgroundColor: Colors.blue[100],
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}