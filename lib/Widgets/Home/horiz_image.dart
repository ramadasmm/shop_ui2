import 'package:flutter/material.dart';

class HorzImageWidget extends StatelessWidget {
  const HorzImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width / 1.07,
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.center,
              image: NetworkImage(
                  "https://image.shutterstock.com/image-vector/horizontal-selling-banner-colored-wide-260nw-1943887528.jpg"),
              fit: BoxFit.cover)),
    );
  }
}
