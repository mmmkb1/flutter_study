import 'package:flutter/material.dart';
import 'package:flutter_study/01_widget_rule/01_ingredient_item/presentation/ingredient_screen.dart';
import 'package:flutter_study/01_widget_rule/02_creator_profile/presentation/creator_profile_screen.dart';
import 'package:flutter_study/01_widget_rule/03_recipe_card_widget/presentation/recipe_card_screen.dart';
import 'package:flutter_study/01_widget_rule/04_pop_up_dialog/presentation/pop_up_dialog_screen.dart';

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
      home: IngredientScreen(),
    );
  }
}
