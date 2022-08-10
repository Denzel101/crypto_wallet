import 'package:crypo_wallet/view/constants/ui.dart';
import 'package:flutter/material.dart';

import '../../widgets/home/categories_list.dart';
import '../../widgets/home/custom_text_field.dart';
import '../../widgets/home/home_top_info.dart';
import '../../widgets/home/token_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: kAppPadding,
          right: kAppPadding,
          top: kAppPadding * 3.5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopInfo(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const CategoriesList(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                physics: const BouncingScrollPhysics(),
                isScrollable: true,
                labelPadding:
                    const EdgeInsets.only(left: 0, right: kAppPadding * 2),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorPadding: const EdgeInsets.only(right: 60.0),
                indicatorWeight: 5.0,
                indicatorColor: kCustomBlue,
                tabs: const [
                  Tab(
                    text: 'Tokens',
                  ),
                  Tab(
                    text: 'Leasing',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SizedBox(
              width: double.maxFinite,
              height: size.height * 0.55,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Flexible(
                            child: CustomTextField(
                              prefixIcon: Icon(Icons.search),
                              label: 'Search',
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: const Icon(
                              Icons.swap_vert,
                              color: Colors.grey,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const TokenCard(
                        imageUrl:
                            'assets/images/6-61095_diamond-shape-clipart-triangle.png',
                        iconData: Icons.check,
                        title: 'Waves 💙',
                        subTitle: '50.0054',
                      ),
                      const TokenCard(
                        imageUrl: 'assets/images/pushing-p.jpg',
                        iconData: Icons.swap_horiz,
                        title: 'Pigeon',
                        subTitle: '1444.04556321',
                      ),
                      const TokenCard(
                        imageUrl:
                            'assets/images/NicePng_dollar-sign-png_169198.png',
                        iconData: Icons.check,
                        title: 'US Dollar',
                        subTitle: '199.24',
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Hidden Tokens (2)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Suspicious Tokens (15)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  const Center(
                    child: Text('Leasing Tab'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
