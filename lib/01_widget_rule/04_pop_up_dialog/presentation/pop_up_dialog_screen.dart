import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PopUpDialogScreen extends StatelessWidget {
  const PopUpDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Popup Dialog Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => RecipeLinkDialog(
                  onTap: (value) {
                    Clipboard.setData(ClipboardData(text: value));
                  },
                  recipeLink: 'app.Recipe.co/jollof_rice',
                ),
              );
            },
            child: const Text('Show Popup'),
          ),
        ),
      ),
    );
  }
}

class RecipeLinkDialog extends StatelessWidget {
  final void Function(String)? onTap;
  final String recipeLink;
  const RecipeLinkDialog({super.key, required this.recipeLink, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recipe Link',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Copy recipe link and share your recipe link with friends and family.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  recipeLink,
                  style: const TextStyle(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF449377),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      'Copy Link',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
