import 'package:flutter/material.dart';
import 'package:flutter_study/02_CreatorProfile/data/model/creator_profile.dart';

class CreatorProfileScreen extends StatefulWidget {
  const CreatorProfileScreen({super.key});

  @override
  _CreatorProfileScreenState createState() => _CreatorProfileScreenState();
}

class _CreatorProfileScreenState extends State<CreatorProfileScreen> {
  final List<CreatorProfile> creatorProfiles = [
    CreatorProfile(
      imageUrl:
          'https://avatar.iran.liara.run/public?timestamp=${DateTime.now().millisecondsSinceEpoch}',
      name: 'Laura wilson',
      address: 'Lagos, Nigeria',
      isFollow: false,
    ),
    CreatorProfile(
      imageUrl:
          'https://avatar.iran.liara.run/public?timestamp=${DateTime.now().millisecondsSinceEpoch + 1}',
      name: 'Maeng Seungju',
      address: 'Lolo, Nigeria',
      isFollow: true,
    ),
  ];

  // List to manage follow status
  late List<bool> followStatus;

  @override
  void initState() {
    super.initState();
    // Initialize followStatus based on creatorProfiles
    followStatus = creatorProfiles.map((profile) => profile.isFollow).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('연습문제 2 - CreatorProfile'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: creatorProfiles.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage(creatorProfiles[index].imageUrl),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          creatorProfiles[index].name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(Icons.location_on,
                                color: Color(0xFF449377), size: 16),
                            const SizedBox(width: 4),
                            Text(
                              creatorProfiles[index].address,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        followStatus[index] = !followStatus[index];
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF449377),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: SizedBox(
                      width:
                          60, // Set a fixed width that accommodates both "Follow" and "Unfollow"
                      child: Center(
                        child: Text(
                          followStatus[index] ? 'Unfollow' : 'Follow',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
