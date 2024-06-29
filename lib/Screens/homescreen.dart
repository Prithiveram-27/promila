import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

class Homescreen extends StatelessWidget {
  static const route = "/HomeScreen";
  final List<String> sampleImages = [
    "https://plus.unsplash.com/premium_photo-1679547202405-0cd1f7f3efb3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1559223607-b4d0555ae227?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D",
  ];
  final List<String> imageUrls = [
    'https://images.unsplash.com/photo-1540317580384-e5d43616b9aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1570563568161-e4f5e8c6e27f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1576085898274-069be5a26c58?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1554941426-5eb1f0a4e107?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1540317580384-e5d43616b9aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Individual Meetup'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(255, 1, 75, 134),
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.search_rounded,
                          color: Color.fromARGB(255, 1, 75, 134),
                        ),
                        onPressed: () {},
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.mic,
                          color: Color.fromARGB(255, 1, 75, 134),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Stack(children: [
                FanCarouselImageSlider.sliderType1(
                  imagesLink: sampleImages,
                  isAssets: false,
                  autoPlay: false,
                  showIndicator: true,
                  sliderHeight: 200,
                  imageRadius: 5,
                  slideViewportFraction: 0.9,
                  indicatorActiveColor: const Color.fromARGB(255, 1, 75, 134),
                  indicatorDeactiveColor: Colors.grey,
                ),
                const Positioned(
                  bottom: 58,
                  left: 38,
                  child: Text(
                    "Popular Meetups in India",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )
              ]),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Trending Popular People",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 75, 134),
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(3, (index) => buildCard()),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Trending Popular Meetups",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 75, 134),
                      fontSize: 18),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/DescriptionScreen");
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      imageUrls.length,
                      (index) => Stack(
                        children: [
                          Container(
                            width: 150,
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: NetworkImage(imageUrls[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            right: 8,
                            child: Container(
                              height: 70,
                              width: 70,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Text(
                                  '${index + 1}'.padLeft(
                                      2, '0'), // Adjust padding as needed
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 1, 75, 134),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 36),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  Widget buildCard() {
    return Container(
      width: 270,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/feather.jpg'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Author",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 75, 134),
                        fontWeight: FontWeight.bold),
                  ),
                  Text("1,028 Meetups"),
                ],
              )
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: Divider(
                  indent: 1,
                  thickness: 3,
                ),
              )
            ],
          ),
          const Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile5.jpg'),
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile2.jpg'),
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile3.jpg'),
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile4.jpg'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 1, 75, 134),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text('See More'),
            ),
          )
        ],
      ),
    );
  }
}

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Prolet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.handshake_outlined),
          label: 'Meetup',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.folder_shared),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
      currentIndex: 2,
      selectedItemColor: Colors.blue,
      unselectedItemColor: const Color.fromARGB(255, 1, 75, 134),
      onTap: (index) {},
    );
  }
}
