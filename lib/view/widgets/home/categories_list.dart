import 'package:flutter/material.dart';

import '../../../data/datasources/data.dart';
import '../../constants/ui.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int selectedCategoryIndex = 0;

  Widget _buildCategory(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Container(
          width: size.width * 0.3,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(right: kAppPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: selectedCategoryIndex == index ? kCustomBlue : Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 1), //(x,y)
                blurRadius: 1.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                categoryIconList[index],
                size: 20.0,
                color: selectedCategoryIndex == index
                    ? Colors.white
                    : Colors.black,
              ),
              Text(
                categoryTextList[index],
                style: TextStyle(
                  fontWeight: selectedCategoryIndex == index
                      ? FontWeight.normal
                      : FontWeight.normal,
                  color: selectedCategoryIndex == index
                      ? Colors.white
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.1,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryTextList.length,
          itemBuilder: (context, index) {
            return _buildCategory(context, index);
          }),
    );
  }
}
