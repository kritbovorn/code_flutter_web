import 'package:beginner/utils/colors.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/app_icon.dart';
import 'package:beginner/widgets/big_text.dart';
import 'package:beginner/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 100, // กำหนดความสูง ให้กับ title: เวลาสไลด์
            title: Row(
              // Content  ของ AppBar
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                  onPressed: () {},
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  onPressed: () {},
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                ),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Dimensions.height20,
                    ),
                    topRight: Radius.circular(
                      Dimensions.height20,
                    ),
                  ),
                ),
                child: BigText(
                  text: 'Chinese Side',
                  size: Dimensions.height26,
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.height300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food0.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width20,
                    vertical: Dimensions.height26,
                  ),
                  child: const ExpandableTextWidget(
                    title:
                        'Phuket has welcomed its first group of foreign travellers arriving by sea under the Test & Go entry programme.Nanthasiri Ronnasiri, director of the Phuket office of the Tourism Authority of Thailand, said the four Indonesian nationals arrived from Singapore on a private yacht called The Maggie,\n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released. \n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.\n Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released. Phuket has welcomed its first group of foreign travellers arriving by sea under the Test & Go entry programme.Nanthasiri Ronnasiri, director of the Phuket office of the Tourism Authority of Thailand, said the four Indonesian nationals arrived from Singapore on a private yacht called The Maggie,\n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released. \n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.\n Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released. Phuket has welcomed its first group of foreign travellers arriving by sea under the Test & Go entry programme.Nanthasiri Ronnasiri, director of the Phuket office of the Tourism Authority of Thailand, said the four Indonesian nationals arrived from Singapore on a private yacht called The Maggie,\n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released. \n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.\n Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released. Phuket has welcomed its first group of foreign travellers arriving by sea under the Test & Go entry programme.Nanthasiri Ronnasiri, director of the Phuket office of the Tourism Authority of Thailand, said the four Indonesian nationals arrived from Singapore on a private yacht called The Maggie,\n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released. \n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.\n Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released.',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // ***** Bottom Navigation Bar : Custom
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min, // $$$$$  สำคัญ มากๆๆๆๆ ต้องมี
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconSize: Dimensions.height26,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  onPressed: () {},
                ),
                BigText(
                  text: '\$12.88 ' ' X ' ' 0 ',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.height26,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconSize: Dimensions.height26,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
              Dimensions.width20,
              Dimensions.height30,
              Dimensions.width20,
              Dimensions.height30,
            ),
            height: Dimensions.height120,
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.width20 * 2),
                topRight: Radius.circular(Dimensions.width20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                  child: const BigText(
                    text: '\$10 | Add to cart',
                    color: Colors.white,
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
