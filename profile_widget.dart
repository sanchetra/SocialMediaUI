import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://i.pinimg.com/564x/8d/ff/90/8dff90e67ca09facd06bde0304e153ae.jpg',
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Jonathan Jen',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.verified_rounded,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ],
                  ),
                  const Text(
                    '@jonathanj007',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Container(
                height: 80,
                color: Colors.transparent,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '765',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Rating',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      width: 10,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '23.6k',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      width: 10,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '2.6k',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/128/870/870143.png',
                          width: 20,
                        ),
                        const Text(
                          'Travel freak  •  ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/128/6062/6062646.png',
                          width: 20,
                        ),
                        const Text(
                          'Mobile App Developer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/128/455/455691.png',
                          width: 18,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          'www.travelfreak.com',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const ProfileStories(),
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
            currentIndex: 3,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, size: 30),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_add_alt_1_outlined, size: 30),
                label: 'Friends',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.ondemand_video_outlined, size: 30),
                label: 'Videos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined, size: 30),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileStory {
  final String storyImg;
  final List<String> viewImg;
  final String viewCount;
  final String description;
  final String hashtag;

  ProfileStory({
    required this.storyImg,
    required this.viewImg,
    required this.viewCount,
    required this.description,
    required this.hashtag,
  });
}

class ProfileStories extends StatelessWidget {
  const ProfileStories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProfileStory> stories = [
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/3a/15/e2/3a15e2a2f4d783820d5fe7ffaaf37959.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/11/a3/6c/11a36c2ec774d0a2b2aa330f5442a12a.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/82/9a/c9/829ac92869d475245ea1d9c040b0a83a.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/3e/90/40/3e904039c5035093be90ccfad328e0b2.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/6f/aa/68/6faa682b9cae8eb56ea396fd2cfaeaca.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/ee/3e/e5/ee3ee5d8bae9f13444d2ee26400191a0.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/736x/e2/a7/f3/e2a7f3a94ac8be9477b1708c44202d39.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/3a/15/e2/3a15e2a2f4d783820d5fe7ffaaf37959.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/11/a3/6c/11a36c2ec774d0a2b2aa330f5442a12a.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/82/9a/c9/829ac92869d475245ea1d9c040b0a83a.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/3e/90/40/3e904039c5035093be90ccfad328e0b2.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/6f/aa/68/6faa682b9cae8eb56ea396fd2cfaeaca.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/564x/ee/3e/e5/ee3ee5d8bae9f13444d2ee26400191a0.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
      ProfileStory(
        storyImg:
        'https://i.pinimg.com/736x/e2/a7/f3/e2a7f3a94ac8be9477b1708c44202d39.jpg',
        viewImg: [
          'https://i.pinimg.com/474x/46/50/7c/46507c45518fa1a75c97e79c844e95da.jpg',
          'https://i.pinimg.com/564x/8e/ea/a0/8eeaa0d5f62bb7614d86e212e6ab2b12.jpg',
          'https://i.pinimg.com/236x/cf/38/00/cf38009efec84d7f8605e31c918bc856.jpg',
        ],
        viewCount: '3.4k likes',
        description: 'Scotland of India',
        hashtag: '#travel #beautifulplace',
      ),
    ];
    return Container(
      color: Colors.grey[900],
      height: 450,
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: stories.length,
        itemBuilder: (BuildContext context, int index) {
          final ProfileStory story = stories[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(story.storyImg),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 7,
                    left: 10,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey, // border color
                            width: 1.0,         // border width
                          ),
                          image: DecorationImage(
                            image : NetworkImage(story.viewImg[0],
                            ),fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: 7,
                    left: 17,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey, // border color
                            width: 1.0,         // border width
                          ),
                          image: DecorationImage(
                            image : NetworkImage(story.viewImg[1],
                            ),fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top: 7, left: 50,
                      child: Text(story.viewCount, style: TextStyle(color: Colors.white, fontSize: 14,),)
                  ),
                  Positioned(
                    top: 7, right: 10,
                      child: Icon(Icons.more_horiz, color: Colors.white,)
                  ),
                  Positioned(
                    top: 7,
                    left: 24,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey, // border color
                          width: 1.0,         // border width
                        ),
                        image: DecorationImage(
                          image : NetworkImage(story.viewImg[2],
                            ),fit: BoxFit.cover,
                        )
                      ),
                    ),
                  ),
                  Positioned(
                      left: 7,
                      right: 7,
                      bottom: 7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(story.description, style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),),
                          Text(story.hashtag, style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500),),
                        ],
                      )
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
