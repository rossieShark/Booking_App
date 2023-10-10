import 'package:booking/widgets/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithIndicator extends StatefulWidget {
  final List<String> images;

  const CarouselWithIndicator({Key? key, required this.images})
      : super(key: key);

  @override
  State<CarouselWithIndicator> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> _buildImageSliders() {
    return widget.images.map((item) {
      return ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          child: Image.network(item, fit: BoxFit.cover));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final imgList = widget.images;
    return Scaffold(
      body: Stack(children: [
        CarouselSlider(
          items: _buildImageSliders(),
          carouselController: _controller,
          options: CarouselOptions(
              viewportFraction: 1.0,
              autoPlay: false,
              height: 257,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              }),
        ),
        Positioned(
          top: 232,
          bottom: 8,
          right: 134,
          left: 134,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              height: 17,
              color: AppColors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  print(entry.key);
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == entry.key
                                ? AppColors.black
                                : AppColors.black
                                    .withOpacity(1 / (entry.key + 5))),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
