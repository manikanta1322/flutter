import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:sizer/sizer.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import 'dart:math' as math;

class CTStart extends StatefulWidget {
  const CTStart({Key? key}) : super(key: key);

  @override
  State<CTStart> createState() => _CTStartState();
}

class _CTStartState extends State<CTStart> {
  static const maxCount = 6;
  static const double maxHeight = 300;
  final random = math.Random();
  final scrollDirection = Axis.vertical;

  late AutoScrollController controller;
  late List<List<int>> randomList;

  @override
  var tabindex;
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded ? Colors.black : Colors.black;
        });
      });
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
    randomList = List.generate(catageries.length,
        (index) => <int>[index, (maxHeight * random.nextDouble()).toInt()]);
  }

  late ScrollController _scrollController;
  Color _textColor = Color.fromRGBO(0, 0, 0, 1);
  static const kExpandedHeight = 293.0;
  List catageries = [
    'Order again',
    'Recommended',
    'Biryani’s',
    'pavan',
    'srinadh',
    'raksdesh',
    'onsdsde',
    'Twdso',
    'natasimhaf',
    'pavffan',
    'srinadffh',
    'rakesh',
    'one',
    'Twfdo',
    'naddftasimha',
    'pafddfvan',
    'srfdfdinadh',
    'raasdskesh',
    'yosdshan'
  ];

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  bool isfavourate = false;
  bool Selectedvalue = false;
  bool veg = false;
  bool nonveg = false;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: CustomScrollView(controller: _scrollController, slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            // show and hide SliverAppBar Title
            leading:
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {}, child: Icon(Icons.favorite_outline)),
                    SizedBox(
                      width: 3.w,
                    ),
                    GestureDetector(onTap: () {}, child: Container()),
                    SizedBox(
                      width: 3.w,
                    ),
                    GestureDetector(onTap: () {}, child: Icon(Icons.share)),
                  ],
                ),
              )
            ],
            title: _isSliverAppBarExpanded
                ? Text(
                    'Angel Food Donuts',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700),
                  )
                : null,

            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: kExpandedHeight,
            // show and hide FlexibleSpaceBar title
            flexibleSpace: _isSliverAppBarExpanded
                ? null
                : FlexibleSpaceBar(
                    centerTitle: false,
                    titlePadding:
                        EdgeInsetsDirectional.only(start: 20, bottom: 16.0),
                    title: Text("",
                        style: TextStyle(
                          color: _textColor,
                          fontSize: 16.sp,
                        )),
                    background: Column(children: [
                      Stack(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/icons/army.png',
                              // height: 50.h,
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                color: Colors.black.withOpacity(0.3),
                                child: Row(children: [
                                  Text(
                                    'Will China invade Taiwan \nbefore end september? ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    width: 14.w,
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.filter,
                                          color: Colors.white,
                                        )),
                                  )
                                ]),
                              ))
                        ],
                      ),
                      // SizedBox(
                      //   height: 16.h,
                      // ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(9),
                                bottomRight: Radius.circular(9)),
                            color: Colors.pink),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'CHANCE',
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 0.6.h,
                                ),
                                Text(
                                  '11%',
                                  style: TextStyle(
                                      fontFamily: 'Montesarat',
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Image.asset(
                              'assets/icons/uparrow.png',
                              scale: 3,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '24H',
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 0.6.h,
                                ),
                                Text(
                                  '+25495\$',
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '\$09',
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 0.6.h,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 7),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        color: Colors.black,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '\$89',
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 0.6.h,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 7),
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ])),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return _wrapScrollTag(
              index: index,
              child: StickyHeader(
                  // controller:controller ,
                  header: DefaultTabController(
                    length: 3,
                    child: Container(
                      height: 50.h,
                      child: Column(
                        children: [
                          TabBar(
                              onTap: (index) {
                                setState(() {
                                  tabindex = index;
                                });
                              },
                              indicatorColor: Color(0xFFE432C1),
                              isScrollable: true,
                              indicatorWeight: 5,
                              unselectedLabelColor: Colors.grey,

                              // indicatorPadding: EdgeInsets.only(top: 10),
                              tabs: [
                                Tab(
                                  child: Text(
                                    'Research & News',
                                    style: TextStyle(
                                        color: tabindex == 0
                                            ? Color(0xFFE432C1)
                                            : Colors.grey,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'Reactions',
                                    style: TextStyle(
                                        color: tabindex == 1
                                            ? Color(0xFFE432C1)
                                            : Colors.grey,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'Related',
                                    style: TextStyle(
                                        color: tabindex == 2
                                            ? Color(0xFFE432C1)
                                            : Colors.grey,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ]),
                        ],
                      ),
                    ),
                  ),
                  content: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '215 Expert Opinion',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(40),
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: Color(0xffC930C5).withOpacity(0.3)
                              ),
                              child: Text('12%',style: TextStyle(
                                color: Color(0xFFE432C1),
                                fontWeight: FontWeight.w500
                              ),),
                            ),
                            Column(
                              children: [
                                // ProgressIndicator()
                               

                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            );
          }, childCount: 1))
        ]));
  }

  Widget _wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: controller,
        index: index,
        child: child,
        highlightColor: Colors.black.withOpacity(0.1),
      );
}
