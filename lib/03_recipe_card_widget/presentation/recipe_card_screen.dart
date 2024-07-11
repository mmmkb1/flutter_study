import 'package:flutter/material.dart';
import 'package:flutter_study/03_RecipeCardWidget/data/model/recipe.dart';

class RecipeCardScreen extends StatefulWidget {
  const RecipeCardScreen({super.key});

  @override
  State<RecipeCardScreen> createState() => _RecipeCardScreenState();
}

class _RecipeCardScreenState extends State<RecipeCardScreen> {
  final List<Recipe> recipes = [
    const Recipe(
      imageUrl:
          'https://cdn.pixabay.com/photo/2021/01/01/15/31/sushi-balls-5878892_1280.jpg',
      title: 'Traditional spare ribs baked',
      chef: 'Chef John',
      rating: 4.0,
      cookTime: 20,
      isFavorite: false,
    ),
    const Recipe(
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/05/14/18/20/spaghetti-1392266_1280.jpg',
      title: 'Delicious pasta with tomato sauce',
      chef: 'Chef Maria',
      rating: 4.5,
      cookTime: 30,
      isFavorite: true,
    ),
  ];

  late List<bool> favoriteRecipes;

  @override
  void initState() {
    super.initState();
    favoriteRecipes = recipes.map((recipe) => recipe.isFavorite).toList();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Card')),
      body: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Image.network(
                  recipes[index].imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.0), // Brightest at the top
                        Colors.black.withOpacity(1.0), // Darkest at the bottom
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 4, bottom: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAE2B8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Color(0xFFF3B14D)),
                        const SizedBox(width: 4), // 4 픽셀 너비의 공간을 만듭니다.
                        Text(
                          recipes[index].rating.toString(),
                          style: const TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  width: screenWidth * 3 / 5,
                  left: 16,
                  bottom: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipes[index].title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'by ${recipes[index].chef}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Row(
                    children: [
                      const Icon(Icons.access_time,
                          size: 20, color: Colors.white),
                      const SizedBox(width: 8), // 4 픽셀 너비의 공간을 만듭니다.
                      const Text(
                        '20 min',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 8), // 4 픽셀 너비의 공간을 만듭니다.

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            favoriteRecipes[index] = !favoriteRecipes[index];
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Icon(
                            favoriteRecipes[index]
                                ? Icons.favorite
                                : Icons.bookmark_outline,
                            size: 20,
                            color: favoriteRecipes[index]
                                ? Colors.red
                                : const Color(0xFF82B1A4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
