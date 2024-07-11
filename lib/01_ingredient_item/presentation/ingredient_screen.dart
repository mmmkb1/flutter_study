import 'package:flutter/material.dart';
import 'package:flutter_study/01_ingredient_item/data/model/ingredient.dart';
import 'package:flutter_study/01_ingredient_item/presentation/component/IngredientItem.dart';

class IngredientScreen extends StatelessWidget {
  final List<Ingredient> ingredients = [
    const Ingredient(
      imageUrl:
          'https://img.freepik.com/free-psd/tomato-fruit-isolated-on-transparent-background_191095-15476.jpg?w=1060&t=st=1720600184',
      name: 'tomatos',
      weight: 500,
    ),
    const Ingredient(
      imageUrl:
          'https://img.freepik.com/free-photo/delicious-red-apples-studio_23-2150811031.jpg?t=st=1720603817~exp=1720607417~hmac=eafadf4939f43bc3a49eb24c8a3beaa03b7d4bd26c3b94a4445cc1dca896ba3e&w=740',
      name: 'apples',
      weight: 300,
    ),
  ];

  IngredientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ingredients'),
        ),
        body: ListView.builder(
          itemCount: ingredients.length,
          itemBuilder: (context, index) {
            return IngredientItem(ingredient: ingredients[index]);
          },
        ),
      ),
    );
  }
}
