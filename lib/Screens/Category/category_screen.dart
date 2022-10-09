import 'package:flutter/material.dart';
import 'package:shop_ui/Widgets/app_bar_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBarWidget(title: 'Category', icon: Icons.menu)),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 1,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 10),
              itemCount: 8,
              itemBuilder: (BuildContext ctx, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://img.freepik.com/premium-vector/vector-hand-drawn-set-dishes-illustration-pots-pans-plates-utensils-cooking-kitchen-utensils_567840-132.jpg?w=2000"),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    const Text('Cooking Essential')
                  ],
                );
              }),
        ));
  }
}
