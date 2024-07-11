import 'package:flutter/material.dart';
import 'package:flutter_study/01_IngredientItem/data/model/ingredient.dart';

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
            return Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  SizedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        ingredients[index].imageUrl,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0), // 왼쪽 여백 설정
                    child: Text(
                      ingredients[index].name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${ingredients[index].weight}g',
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
