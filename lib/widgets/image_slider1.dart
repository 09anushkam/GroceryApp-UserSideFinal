import 'dart:async'; // Required for Timer
import 'package:flutter/material.dart';

class ImageSlider1 extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider1> {
  final List<Map<String, String>> imgList = [
    {
      'image': 'Assests/slide1.png',

    },
    {
      'image': 'Assests/slide2.png',

    },
    {
      'image': 'Assests/slide3.png',

    },
  ];

  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  void _startAutoPlay() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < imgList.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0; // Go back to the first page after the last one
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void _stopAutoPlay() {
    if (_timer != null) {
      _timer!.cancel();
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 300, // Customizable height for the slider
          child: PageView.builder(
            controller: _pageController,
            itemCount: imgList.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  // Display image
                  Image.asset(
                    imgList[index]['image']!,
                    fit: BoxFit.contain,
                    width: double.infinity,
                    height: 280, // Set height for images
                  ),



                ],
              );
            },
          ),
        ),

      ],
    );
  }
}
