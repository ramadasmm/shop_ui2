import 'package:flutter/material.dart';
import '../../Widgets/Home/dot_widget.dart';
import '../../Widgets/Home/horiz_image.dart';
import '../../Widgets/Home/pack_fd.dart';
import '../../Widgets/Home/search_bar.dart';
import '../../Widgets/Home/shop_categ_img.dart';
import '../../Widgets/app_bar_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBarWidget(
          title: 'UserName',
          icon: Icons.menu,
        ),
      ),

      /*
      
      UI Starting

      */
      body: Column(
        children: [
          const SearchBarWidget(),
          const HorzImageWidget(),
          const SizedBox(
            height: 30,
          ),
          const DotWidget(),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Shop by category",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ShopCategoryImageWidget(
            image:
                "https://img.freepik.com/premium-vector/vector-hand-drawn-set-dishes-illustration-pots-pans-plates-utensils-cooking-kitchen-utensils_567840-132.jpg?w=2000",
            title: "Cooking\nEssential",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Pakaged Food',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('View All'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 0,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: const [
                    PakFoodWidget(),
                    PakFoodWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
