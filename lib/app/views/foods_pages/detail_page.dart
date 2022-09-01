import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mgy4u/app/controllers/fb_controller.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../data/model/info.dart';

class DetailPage extends StatelessWidget {
  Info pages;
  DetailPage(this.pages);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<FbController>(builder: (controller) {
      return Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      padding: EdgeInsets.only(
                          top: size.height * 0.12, left: 20, right: 20),
                      //height: 500,
                      decoration: const BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          )),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Column(children: [
                                Text("type " + pages.type),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eros mauris, aliquet eget orci ut, ultricies vulputate ex. Phasellus elit ex, elementum eget aliquam sit amet, facilisis in nibh. Vestibulum feugiat gravida ipsum, id vehicula risus aliquam non. Aliquam erat volutpat. Proin auctor commodo nibh, sit amet tincidunt tortor molestie quis. Donec non nunc rutrum, laoreet sapien at, sodales felis. Nulla facilisi."),
                                //Text(pages.desc),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                        child: Text('Facebook'),
                                        onPressed: () async {
                                          String fbProtocolUrl = pages.pageId;
                                          String fallbackUrl = pages.pageUrl;
                                          try {
                                            bool launched =
                                                await launchUrlString(
                                                    fbProtocolUrl);
                                            //bool launched = await launch(fbProtocolUrl, forceSafariVC: false);
                                            print(
                                                "launching..." + fbProtocolUrl);
                                            if (!launched) {
                                              print("can't launch");
                                              await launchUrlString(
                                                  fallbackUrl);
                                              //await launch(fallbackUrl, forceSafariVC: false);
                                            }
                                          } catch (e) {
                                            print("can't launch exp " +
                                                e.toString());
                                            await launchUrlString(fallbackUrl);
                                            //await launch(fallbackUrl, forceSafariVC: false);
                                          }
                                        }),
                                    ElevatedButton(
                                        onPressed: () async {
                                          await FlutterPhoneDirectCaller
                                              .callNumber(pages.phone);
                                        },
                                        child: Text('Call Now'))
                                  ],
                                )
                              ])),
                            ],
                          )
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Taste",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          pages.name,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(pages.location),
                            // RichText(
                            //     text: TextSpan(children: [
                            //   TextSpan(
                            //       text: "Price\n",
                            //       style: TextStyle(color: Colors.black)),
                            //   TextSpan(
                            //       text: "3500Ks",
                            //       style: TextStyle(
                            //           color: Colors.black,
                            //           fontSize: 18,
                            //           fontWeight: FontWeight.bold))
                            // ])),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Image.asset(
                              pages.detailImage,
                              fit: BoxFit.fitHeight,
                              width: 100,
                              height: 200,
                            ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ));
    });
  }
}
