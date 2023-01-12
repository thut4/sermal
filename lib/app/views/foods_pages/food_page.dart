import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mgy4u/app/views/foods_pages/detail_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controllers/controller.dart';

// class FoodPage extends StatefulWidget {
//   final Controller productController = Get.find();
//   FoodPage({Key? key}) : super(key: key);
//   @override
//   State<FoodPage> createState() => _FoodPageState();
// }

// class _FoodPageState extends State<FoodPage> {
//   @override
//   Widget build(BuildContext context) {
// return Scaffold(
//   body: Column(
//     children: [
//       Expanded(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: GridView.builder(
//               itemCount: productController.productList.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 0.75,
//                 mainAxisSpacing: 20,
//                 crossAxisSpacing: 20,
//               ),
//               itemBuilder: (context, index) {
//                 return Card(
//                   child: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         Get.to(() =>
//                             DetailPage(productController.productList[index]));
//                       });
//                     },
//                     child: Column(
//                       children: [
//                         Expanded(
//                             child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.transparent,
//                                     borderRadius: BorderRadius.circular(8)),
//                                 child: ClipOval(
//                                   child: SizedBox.fromSize(
//                                     size: Size.fromRadius(80),
//                                     child: Image.network(
//                                       productController
//                                           .productList[index].image,
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                 ))),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 5),
//                           child:
//                               Text(productController.productList[index].name),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//                 //return Text(productController.productList[index].name);
//               }),
//         ),
//       ),
//     ],
//   ),
// );
//   }
// }

class FoodPage extends StatelessWidget {
  // final Controller productController = Get.find();
  final productController = Get.put(Controller());
  FoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                    itemCount: productController.productList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        child: GestureDetector(
                          onTap: () {
                            // setState(() {
                            //   Get.to(() =>
                            //       DetailPage(productController.productList[index]));
                            // });
                          },
                          child: Column(
                            children: [
                              Expanded(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(8)),
                                      child: ClipOval(
                                        child: SizedBox.fromSize(
                                          size: const Size.fromRadius(80),
                                          child: Image.network(
                                            productController
                                                .productList[index].image,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ))),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                    productController.productList[index].name),
                              ),
                            ],
                          ),
                        ),
                      );
                      //return Text(productController.productList[index].name);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
