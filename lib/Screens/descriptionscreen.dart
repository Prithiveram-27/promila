import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:share_plus/share_plus.dart';

class DescriptionScreen extends StatefulWidget {
  static const route = "/DescriptionScreen";

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  final List<String> sampleImages = [
    "https://plus.unsplash.com/premium_photo-1679547202405-0cd1f7f3efb3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1559223607-b4d0555ae227?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fGNvbmZlcmVuY2UlMjBwaWN0dXJlc3xlbnwwfHwwfHx8MA%3D%3D",
  ];

  _onShareData(BuildContext context, String dateToShare) async {
    final box = context.findRenderObject() as RenderBox?;

    await Share.share(
      dateToShare,
      subject: dateToShare,
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Description'),
      ),
      bottomNavigationBar: bottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 230,
                    child: CarouselSlider.builder(
                      itemCount: sampleImages.length,
                      slideBuilder: (index) {
                        return Container(
                          alignment: Alignment.center,
                          child: Image.network(
                            sampleImages[index],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        );
                      },
                      slideIndicator: CircularSlideIndicator(
                        indicatorBackgroundColor: Colors.grey,
                        currentIndicatorColor: Colors.white,
                        padding: const EdgeInsets.only(bottom: 10),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.download),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.bookmark_outline),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.center_focus_weak_outlined),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.star_border),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.share),
                          onPressed: () {
                            _onShareData(context, sampleImages[0]);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.bookmark_outline),
                      Text('1034'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.favorite_outline),
                      Text(' 1034'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.white60,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.blue,
                          ),
                          onRatingUpdate: (value) {},
                        ),
                      ),
                      const Text('3.2'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Actor Name",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 75, 134),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Indian Actress",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Icon(Icons.alarm_outlined),
                        Text(
                          "Duration 20 Mins",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Icon(Icons.wallet_outlined),
                        Text(
                          "Total Average Fees ₹9,999",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                        color: Color.fromARGB(255, 1, 75, 134),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ReadMoreText(
                "From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just one session outon the waves. So, you may find yourself wondering what are the benefits of going on a surf camp",
                trimLines: 4,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'See More',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                trimExpandedText: ' Hide',
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
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
