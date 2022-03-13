import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
            child: Container(
                height: _deviceHeight,
                width: _deviceWidth,
                padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _pageTitle(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _destinationDropdownWidget(),
                          _travellersInformationWidget(),
                        ]),
                  ],
                ))));
  }

  Widget _pageTitle() {
    return const Text("#Go Moon",
        style: TextStyle(
            color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold));
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/images/astro_moon.png"))),
    );
  }

  Widget _destinationDropdownWidget() {
    return CustomDropDownButtonClass(values: const [
      'James Webb Station',
      'Major Tom',
    ], width: _deviceWidth * .55);
  }

  Widget _travellersInformationWidget() {
    return CustomDropDownButtonClass(
        values: const ['Economy', 'Business', 'First'],
        width: _deviceWidth * .30);
  }
}
