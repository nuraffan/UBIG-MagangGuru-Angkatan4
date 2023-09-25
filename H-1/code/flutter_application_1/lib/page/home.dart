///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'flutterViz_bottom_navigationBar_model.dart';

class Home extends StatelessWidget {
  final pageController = PageController();
  List<FlutterVizBottomNavigationBarModel> flutterVizBottomNavigationBarItems =
      [
    const FlutterVizBottomNavigationBarModel(icon: Icons.home, label: "Home"),
    const FlutterVizBottomNavigationBarModel(
        icon: Icons.article, label: "Order"),
    const FlutterVizBottomNavigationBarModel(
        icon: Icons.favorite, label: "Favourite"),
    const FlutterVizBottomNavigationBarModel(
        icon: Icons.shopping_cart, label: "Market"),
    const FlutterVizBottomNavigationBarModel(
        icon: Icons.account_circle, label: "Account")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2e5e7),
      bottomNavigationBar: BottomNavigationBar(
        items: flutterVizBottomNavigationBarItems
            .map((FlutterVizBottomNavigationBarModel item) {
          return BottomNavigationBarItem(
            icon: Icon(item.icon),
            label: item.label,
          );
        }).toList(),
        backgroundColor: const Color(0xffffffff),
        currentIndex: 0,
        elevation: 8,
        iconSize: 24,
        selectedItemColor: const Color(0xff3a57e8),
        unselectedItemColor: const Color(0xff9e9e9e),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (value) {},
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    color: const Color(0xff3a57e8),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    border:
                        Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "FOOD",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 22,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Text(
                                "FREE",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 22,
                                  color: Color(0xfffba808),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.dashboard,
                            color: Color(0xffffffff),
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xffffffff),
                            size: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                            child: Text(
                              "Tasikmadu, Kec. Karangploso, Kab. Malang",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: TextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xffffffff),
                        ),
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                                color: Color(0x00ffffff), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                                color: Color(0x00ffffff), width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                                color: Color(0x00ffffff), width: 1),
                          ),
                          hintText: "Cari..",
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0x55ffffff),
                          ),
                          filled: true,
                          fillColor: const Color(0xff4c67ee),
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          prefixIcon: const Icon(Icons.search,
                              color: Color(0x55ffffff), size: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Stack(
                        children: [
                          PageView.builder(
                            controller: pageController,
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, position) {
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 8, 16, 24),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network(
                                    "https://img.freepik.com/free-photo/top-view-table-full-delicious-food-composition_23-2149141352.jpg",
                                    height: 300,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SmoothPageIndicator(
                              controller: pageController,
                              count: 3,
                              axisDirection: Axis.horizontal,
                              effect: const WormEffect(
                                dotColor: Color(0xff9e9e9e),
                                activeDotColor: Color(0xff3f51b5),
                                dotHeight: 12,
                                dotWidth: 12,
                                radius: 16,
                                spacing: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Terlaris",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    "Lihat Semua",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff3a57e8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0x1fffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                    padding: const EdgeInsets.all(0),
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGGNrUcKGgflkIrYNrLqPLXTEJvVPJaFTK5pYMNyW_V4K2V6ZBLUUQTjQgXjQuvomXls4&usqp=CAU"),
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            "Rice",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                    padding: const EdgeInsets.all(0),
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS43fz3D6uzu6xs4xhVYNafrPef6A5yrYjsJpUhdrqIMffqLhTi-xYEFeY8e9J0DXpxhQQ&usqp=CAU"),
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            "Noodles",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                    padding: const EdgeInsets.all(0),
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                      border:
                          Border.all(color: const Color(0x4dffffff), width: 1),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOQBk7NAEdgNDPZoMXy-OzQplDelzUjV39GwCfjzREFX-QB7uoBwM2YlaGYx-9quBL5Z0&usqp=CAU"),
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            "Paneer",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS43fz3D6uzu6xs4xhVYNafrPef6A5yrYjsJpUhdrqIMffqLhTi-xYEFeY8e9J0DXpxhQQ&usqp=CAU"),
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            "Noodles",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Kategori",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    "Lihat Semua",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff3a57e8),
                    ),
                  ),
                ],
              ),
            ),
            GridView(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.7,
              ),
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0x00ffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child:

                            ///***If you have exported images you must have to copy those images in assets/images directory.
                            const Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2014/08/14/14/21/shish-kebab-417994_960_720.jpg"),
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          "Vegetable",
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0x00ffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child:

                            ///***If you have exported images you must have to copy those images in assets/images directory.
                            const Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/01/20/15/06/oranges-1995056_960_720.jpg"),
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          "Fruits",
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0x00000000),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child:

                            ///***If you have exported images you must have to copy those images in assets/images directory.
                            const Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/07/21/11/17/drink-1532300_960_720.jpg"),
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          "Drink",
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0x00000000),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child:

                            ///***If you have exported images you must have to copy those images in assets/images directory.
                            const Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_960_720.jpg"),
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          "Fast Food",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0x00ffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child:

                            ///***If you have exported images you must have to copy those images in assets/images directory.
                            const Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/03/05/23/02/barbecue-1239434_960_720.jpg"),
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          "Meat",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0x00000000),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child:

                            ///***If you have exported images you must have to copy those images in assets/images directory.
                            const Image(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/03/05/22/31/prawns-1239307_960_720.jpg"),
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          "Sea Food",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
