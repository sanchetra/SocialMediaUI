import 'package:firstproject/profile_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileWidget(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        'https://i.pinimg.com/564x/8d/ff/90/8dff90e67ca09facd06bde0304e153ae.jpg',
                        height: 50,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jonathan Jen',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@jonathanj007',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.notifications_on_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Text(
                  'Stories',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Stories(),
              Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15, left: 15), // Adjusted padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Post(),
            ],
          ),
        ),

        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[850],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[700],
            currentIndex: 0,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, size: 30),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_rounded, size: 30),
                label: 'Friends',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.ondemand_video_outlined, size: 30),
                label: 'Videos',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileWidget(),
                      ),
                    );
                  },
                  child: const Icon(Icons.person_outline_outlined, size: 30),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MyStories {
  final String storyImg;
  final String storyName;

  MyStories({required this.storyImg, required this.storyName});
}

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MyStories> stories = [
      MyStories(
        storyImg:
        'https://i.pinimg.com/564x/3a/15/e2/3a15e2a2f4d783820d5fe7ffaaf37959.jpg',
        storyName: 'Jonathan',
      ),
      MyStories(
        storyImg:
        'https://i.pinimg.com/564x/82/9a/c9/829ac92869d475245ea1d9c040b0a83a.jpg',
        storyName: 'James',
      ),
      MyStories(
        storyImg:
        'https://i.pinimg.com/564x/3e/90/40/3e904039c5035093be90ccfad328e0b2.jpg',
        storyName: 'Jake',
      ),
      MyStories(
        storyImg:
        'https://i.pinimg.com/564x/6f/aa/68/6faa682b9cae8eb56ea396fd2cfaeaca.jpg',
        storyName: 'Jack',
      ),
      MyStories(
        storyImg:
        'https://i.pinimg.com/736x/e2/a7/f3/e2a7f3a94ac8be9477b1708c44202d39.jpg',
        storyName: 'Jordan',
      ),
      MyStories(
        storyImg:
        'https://i.pinimg.com/564x/ee/3e/e5/ee3ee5d8bae9f13444d2ee26400191a0.jpg',
        storyName: 'Josh',
      ),
    ];
    return Container(
      padding: const EdgeInsets.all(15),
      height: 215,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (BuildContext context, int index) {
          final MyStories story = stories[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        story.storyImg,
                        width: 110,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 7,
                      top: 7,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Text(
                          'Live',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        story.storyName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.verified_rounded,
                        color: Colors.blue,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class MyPost {
  final String postImg;
  final String profile;
  final String name;
  final String postDate;
  final String description;
  final String hashtag;

  MyPost({
    required this.postImg,
    required this.profile,
    required this.postDate,
    required this.description,
    required this.hashtag,
    required this.name,
  });
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MyPost> posts = [
      MyPost(
        postImg:
        'https://i.pinimg.com/564x/6c/fc/1f/6cfc1fd8cb46caab58efb9fc4609726d.jpg',
        profile:
        'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
        name: 'Jane',
        postDate: '2 hours ago',
        description: 'Lost in the magic of Paris!',
        hashtag:
        '#paris #travel #CityOfLights #ParisAdventures #Wanderlust',
      ),
      MyPost(
        postImg:
        'https://i.pinimg.com/564x/90/20/78/902078578b7244d4a6648dfa56b01bba.jpg',
        profile:
        'https://i.pinimg.com/236x/66/04/9c/66049c6e10beafec1531944755992228.jpg',
        name: 'Joseph',
        postDate: '2 hours ago',
        description: 'Lost in the magic of Paris!',
        hashtag:
        '#paris #travel #CityOfLights #ParisAdventures #Wanderlust',
      ),
      MyPost(
        postImg:
        'https://i.pinimg.com/564x/6c/23/68/6c2368081536a813172234717c31b6c8.jpg',
        profile:
        'https://i.pinimg.com/236x/55/ee/37/55ee37ad53d826ce8d17d441c5cb4ce0.jpg',
        name: 'Julian',
        postDate: '2 hours ago',
        description: 'Lost in the magic of Paris!',
        hashtag:
        '#paris #travel #CityOfLights #ParisAdventures #Wanderlust',
      ),
      MyPost(
        postImg:
        'https://i.pinimg.com/564x/b1/a5/e3/b1a5e36fbacfaae642a1e86e02f57557.jpg',
        profile:
        'https://i.pinimg.com/474x/11/a3/6c/11a36c2ec774d0a2b2aa330f5442a12a.jpg',
        name: 'Jade',
        postDate: '2 hours ago',
        description: 'Lost in the magic of Paris!',
        hashtag:
        '#paris #travel #CityOfLights #ParisAdventures #Wanderlust',
      ),
      MyPost(
        postImg:
        'https://i.pinimg.com/564x/27/ad/a8/27ada836ed530383065e869c454ba0af.jpg',
        profile:
        'https://i.pinimg.com/236x/59/2a/ee/592aeeb2e401586a83a96bd171caabbf.jpg',
        name: 'Joshua',
        postDate: '2 hours ago',
        description: 'Lost in the magic of Paris!',
        hashtag:
        '#paris #travel #CityOfLights #ParisAdventures #Wanderlust',
      ),

    ];
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        final MyPost post = posts[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    child: Image.network(
                      post.postImg,
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            post.profile,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post.name,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              post.postDate,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      post.description,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      post.hashtag,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 135,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.favorite_border_rounded,
                        size: 16,
                        color: Colors.white,
                      ),
                      Text(
                        'Like',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
