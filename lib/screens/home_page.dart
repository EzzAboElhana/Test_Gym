// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gym_app/Widgets/my_text.dart';
import 'package:gym_app/constants/my_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List images = [
    "assets/images/Rectangle 4202.png",
    'assets/images/Rectangle 4203.png',
    "assets/images/Rectangle 4204.png",
    "assets/images/Rectangle 4205.png"
  ];

  List dayimages = [
    "assets/images/DayImage1.png",
    "assets/images/DayImage2.png",
    "assets/images/DayImage3.png",
    "assets/images/DayImage4.png",
    "assets/images/DayImage1.png",
    "assets/images/DayImage2.png",
  ];
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
        backgroundColor: MyColors.blackcolor,
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                              text: 'Good Moring! 👋',
                              fontSize: 14,
                              color: MyColors.Graycolor),
                          MyText(
                              text: 'Sayed Ahmed',
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: MyColors.Graycolor),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: MyColors.blackcolor,
                        child: Image.asset('assets/images/Vector.png'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Expanded(
                      child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView(children: [
                            Column(children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    child: Image.asset(
                                      'assets/images/Rectangle 4201.png',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/image 19.png'),
                                      Column(
                                        children: [
                                          MyText(
                                              text: 'Start your',
                                              fontSize: 24,
                                              color: MyColors.whitecolor),
                                          MyText(
                                              text: 'Training ',
                                              fontSize: 40.sp,
                                              fontWeight: FontWeight.bold,
                                              color: MyColors.primarycolor)
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TabBar(
                                dividerHeight: 0.1,
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicatorWeight: .5,
                                labelColor: MyColors.blackcolor,
                                unselectedLabelColor: MyColors.whitecolor,
                                controller: tabController,
                                indicator: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: MyColors.primarycolor),
                                tabs: [
                                  Tab(
                                    child: MyText(
                                      text: 'week',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    // text: 'week',
                                  ),
                                  Tab(
                                    child: MyText(
                                      text: 'Day',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 1,
                                  width: double.infinity,
                                  child: TabBarView(
                                      controller: tabController,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 24.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  MyText(
                                                    text: 'Start New Week',
                                                    fontSize: 16.sp,
                                                    color: MyColors.whitecolor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  MyText(
                                                    text: 'See all',
                                                    fontSize: 16.sp,
                                                    color:
                                                        MyColors.primarycolor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 16.h,
                                              ),
                                              ListView.builder(
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemCount: 4,
                                                  itemBuilder: (_, index) {
                                                    return Container(
                                                      width: double.infinity,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20.w,
                                                              vertical: 16.h),
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Image.asset(
                                                            images[index],
                                                            fit:
                                                                BoxFit.fitWidth,
                                                          ),
                                                          Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                MyText(
                                                                  text:
                                                                      'Body Building',
                                                                  fontSize:
                                                                      16.sp,
                                                                  color: MyColors
                                                                      .whitecolor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                                MyText(
                                                                  text:
                                                                      'Full body workout',
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: MyColors
                                                                      .Graycolor,
                                                                ),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          30.w,
                                                                      width:
                                                                          68.h,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              MyColors.Greencolor,
                                                                          width:
                                                                              2.h,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(30),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.play_circle,
                                                                            color:
                                                                                MyColors.Greencolor,
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                3,
                                                                          ),
                                                                          MyText(
                                                                              text: '28 vid',
                                                                              fontSize: 11.sp,
                                                                              color: MyColors.Greencolor)
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 19,
                                                                    ),
                                                                    Container(
                                                                      height:
                                                                          30.w,
                                                                      width:
                                                                          68.h,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              MyColors.primarycolor,
                                                                          width:
                                                                              2.h, //width of border
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(30),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.local_fire_department,
                                                                            color:
                                                                                MyColors.primarycolor,
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                3.w,
                                                                          ),
                                                                          MyText(
                                                                              text: '28 vid',
                                                                              fontSize: 11.sp,
                                                                              color: MyColors.primarycolor)
                                                                        ],
                                                                      ),
                                                                    )
                                                                  ],
                                                                )
                                                              ]),
                                                        ],
                                                      ),
                                                    );
                                                  })
                                            ]),
                                        GridView.count(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            crossAxisCount: 2,
                                            children: List.generate(6, (index) {
                                              return Container(
                                                width: double.infinity,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 20.w,
                                                    vertical: 16.h),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: double.infinity,
                                                      child: Image.asset(
                                                        dayimages[index],
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            MyText(
                                                              text:
                                                                  'Body Building',
                                                              fontSize: 12.sp,
                                                              color: MyColors
                                                                  .whitecolor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .play_circle_fill,
                                                              color: MyColors
                                                                  .primarycolor,
                                                            )
                                                          ],
                                                        ),
                                                        MyText(
                                                          text:
                                                              'Full body workout',
                                                          fontSize: 12.sp,
                                                          color: MyColors
                                                              .Graycolor,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .fitness_center,
                                                              color: MyColors
                                                                  .Graycolor,
                                                            ),
                                                            MyText(
                                                              text: 'x5',
                                                              fontSize: 14.sp,
                                                              color: MyColors
                                                                  .Graycolor,
                                                            ),
                                                            SizedBox(
                                                              width: 10.w,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .local_fire_department_outlined,
                                                              color: MyColors
                                                                  .whitecolor,
                                                            ),
                                                            MyText(
                                                              text: '120Cal',
                                                              fontSize: 14.sp,
                                                              color: MyColors
                                                                  .Graycolor,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              );
                                            }))
                                      ]))
                            ])
                          ])))
                ])));
  }
}
