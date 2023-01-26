import 'package:flutter/material.dart';
import 'package:infinity_box_test/components/common_text_field.dart';
import 'package:infinity_box_test/config/media_query.dart';
import 'package:infinity_box_test/const/distances.dart';
import 'package:infinity_box_test/const/mColors.dart';
import 'package:infinity_box_test/models/product_item.dart';
import 'package:infinity_box_test/tempValues.dart';

List<String> tempCategories = [
  "electronics",
  "jewelery",
  "men's clothing",
  "women's clothing"
];

class ProductListScreen extends StatelessWidget {
  static const routeName = "/product_list_screen";

  ProductListScreen({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();

  String appBarName = "Shop App";
  String searchHintText = "Search Products";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: mediaQuerySize(context).width * padding05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mediaQueryPadding(context).top + padding10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  appBarName,
                  style: const TextStyle(),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(padding25),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const Icon(Icons.shopping_cart),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red,
                            ),
                            child: Center(
                              child: Text(
                                "4",
                                style:
                                    TextStyle(color: whiteColor, fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuerySize(context).height * padding02),
            CommonTextField(
              hintText: searchHintText,
              controller: controller,
              obscureText: false,
              validator: (_) => "",
              onchange: (_) => "",
            ),
            SizedBox(height: mediaQuerySize(context).height * padding02),
            SizedBox(
              height: padding30,
              child: ListView.builder(
                itemCount: tempCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: padding10),
                    margin: const EdgeInsets.only(right: padding10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(padding25),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(child: Text(tempCategories[index])),
                  );
                },
              ),
            ),
            SizedBox(height: mediaQuerySize(context).height * padding02),
            GridView.count(
              shrinkWrap: true,
              childAspectRatio: 2 / 3.2,
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              children: List.generate(
                productItemTemp.length,
                (index) {
                  ProductItem currentItem = productItemTemp[index];
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: mediaQuerySize(context).width * padding02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.network(
                              height: mediaQuerySize(context).height * padding2,
                              currentItem.image,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuerySize(context).height * padding01,
                          ),
                          Text(
                            currentItem.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuerySize(context).height * padding01,
                          ),
                          Text(currentItem.category),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BoldText(title: "${currentItem.price}"),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.add, color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.blue,
                                  // <-- Button color
                                  foregroundColor:
                                      Colors.red, // <-- Splash color
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BoldText extends StatelessWidget {
  const BoldText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
