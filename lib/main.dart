import 'package:flutter/material.dart';
import 'package:flutter_study/01_IngredientItem/presentation/ingredient_screen.dart';
import 'package:flutter_study/02_CreatorProfile/presentation/creator_profile_screen.dart';
import 'package:flutter_study/03_RecipeCardWidget/presentation/recipe_card_screen.dart';
import 'package:flutter_study/04_PopUpDialog%20copy/presentation/pop_up_dialog_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PopUpDialogScreen(),
    );
  }
}
