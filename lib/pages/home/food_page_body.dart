import 'package:beginner/controllers/popular_product_controller.dart';
import 'package:beginner/mainWidget/multi_icon_shared.dart';
import 'package:beginner/models/products_model.dart';
import 'package:beginner/utils/app_constant.dart';
import 'package:beginner/widgets/app_column.dart';
import 'package:beginner/widgets/big_text.dart';
import 'package:beginner/utils/colors.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  final double _itemHeight = Dimensions.pageView;

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
        GetBuilder<PopularProductController>(
          builder: (popularProducts) {
            return SizedBox(
              height: _itemHeight,
              child: PageView.builder(
                controller: _pageController,
                itemCount: popularProducts.popularProductLists.isEmpty
                    ? 1
                    : popularProducts.popularProductLists.length,
                itemBuilder: (context, index) => _buildPageItem(
                    index, popularProducts.popularProductLists[index]),
              ),
            );
          },
        ),
        GetBuilder<PopularProductController>(
          builder: (popularProducts) {
            return DotsIndicator(
              dotsCount: popularProducts.popularProductLists.isEmpty
                  ? 1
                  : popularProducts.popularProductLists.length,
              position: _currentPageValue,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(24.0, 9.0),
                activeColor: AppColors.mainColor,
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            );
          },
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: Dimensions.height30,
            horizontal: Dimensions.width20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const BigText(text: 'Popular'),
              SizedBox(
                width: Dimensions.width10,
              ),
              const BigText(text: '•'),
              SizedBox(
                width: Dimensions.width10,
              ),
              const SmallText(text: 'Food Pairing'),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width10,
                  right: Dimensions.width10,
                  top: Dimensions.height10,
                  bottom: Dimensions.height10),
              child: Row(
                children: [
                  Container(
                    width: Dimensions.height120,
                    height: Dimensions.height120,
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/image/food0.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: Dimensions.height100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: Dimensions.height5,
                              left: Dimensions.width10,
                              right: Dimensions.width10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const BigText(
                                    text: 'Nutritious fruits meal in China'),
                                SizedBox(
                                  height: Dimensions.height5,
                                ),
                                const SmallText(
                                    text: 'With chinese characteristics'),
                              ],
                            ),
                          ),
                          const MultiIconShared(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPageItem(int index, ProductModel popularProductList) {
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
            margin: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width10,
            ),
            height: Dimensions.pageViewContainer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              image: DecorationImage(
                image: NetworkImage(
                  AppConstant.baseUri + '/uploads/' + popularProductList.img!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width30,
                    right: Dimensions.width30,
                    bottom: Dimensions.height15),
                height: Dimensions.pageViewTextContainer,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 5,
                    ),
                    // BoxShadow(
                    //   color: Colors.white,
                    //   offset: Offset(-5, 0),
                    // ),
                    // BoxShadow(
                    //   color: Colors.white,
                    //   offset: Offset(5, 0),
                    // ),
                  ],
                ),
                child: SizedBox(
                  // padding: EdgeInsets.only(
                  //     top: Dimensions.height15,
                  //     left: Dimensions.height15,
                  //     right: Dimensions.height15),
                  child: AppColumn(
                    title: popularProductList.name!,
                    numberOfLiked: numberOfLiked,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
