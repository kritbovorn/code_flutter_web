import 'package:beginner/mainWidget/multi_icon_shared.dart';
import 'package:beginner/utils/big_text.dart';
import 'package:beginner/utils/colors.dart';
import 'package:beginner/utils/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  final PageController _pageController = PageController(viewportFraction: 0.85);

  //  สร้างตัวแปรมารับค่า _pageController.page!;
  double _currentPageValue = 0.0;
  int numberOfLiked = 3;

  final double _scaleFraction = 0.8;
  final double _itemHeight = 320;

  // กำหนดให้มีอัตราส่วน เท่ากับ 0.8

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        _currentPageValue = _pageController.page!;

        debugPrint('Current Page Value is: ' + _currentPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: _itemHeight,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 7,
            itemBuilder: (context, index) => _buildPageItem(index),
          ),
        ),
        DotsIndicator(
          dotsCount: 7,
          position: _currentPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(24.0, 9.0),
            activeColor: AppColors.mainColor,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix4 = Matrix4.identity();

    if (index == _currentPageValue.floor()) {
      var scale = 1 - ((_currentPageValue - index) * (1 - _scaleFraction));
      var position = _itemHeight * (1 - scale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, position, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var scale =
          0.8 + ((_currentPageValue - index + 1) * (1 - _scaleFraction));
      var position = _itemHeight * (1 - scale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, position, 0);
    } else {
      var scale = _scaleFraction;
      var position = _itemHeight * (1 - scale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, position, 0);
    }

    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              image: const DecorationImage(
                image: AssetImage('assets/image/food0.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    ),
                  ],
                ),
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: 'Chinese Side: Index: ' + index.toString(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children:
                                List.generate(5, (index) => _iconsStar(index)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const SmallText(text: '4.5'),
                          const SizedBox(
                            width: 10,
                          ),
                          const SmallText(text: '1287'),
                          const SizedBox(
                            width: 5,
                          ),
                          const SmallText(text: 'comments.')
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const MultiIconShared(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _iconsStar(int index) {
    return Icon(
      Icons.star,
      size: 15,
      color: index < numberOfLiked ? Colors.orange : AppColors.mainColor,
    );
  }
}
