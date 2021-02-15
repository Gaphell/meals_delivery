import 'package:flutter/material.dart';
import 'package:meals_delivery/views/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext conte) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nom Nom'),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryItem(
            category.title,
            category.color,
          );
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
