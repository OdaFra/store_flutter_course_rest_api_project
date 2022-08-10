import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_api_flutter_course/consts/global_colors.dart';
import 'package:store_api_flutter_course/widgets/app_icon.dart';
import 'package:store_api_flutter_course/widgets/sale_wdget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _textEditingController;
  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            ///  elevation: 4,
            title: const Text('Home'),
            leading: AppBarIcons(function: () {}, icon: IconlyBold.category),
            actions: [AppBarIcons(function: () {}, icon: IconlyBold.user3)],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 18),
                TextField(
                  controller: _textEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Search',
                      filled: true,
                      fillColor: Theme.of(context).cardColor,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Theme.of(context).cardColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.secondary)),
                      suffix: Icon(
                        IconlyLight.search,
                        color: lightIconsColor,
                      )),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: size.height * 0.25,
                  child: Swiper(
                    itemCount: 3,
                    itemBuilder: (ctx, index) {
                      return const SaleWidget();
                    },
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.white,
                          activeColor: Colors.red.shade400),
                    ),
                    control: const SwiperControl(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
