import 'package:e_cuzdan/common/common_color.dart';
import 'package:e_cuzdan/common/common_textstyle.dart';
import 'package:e_cuzdan/features/home/model/transaction_model.dart';
import 'package:e_cuzdan/features/home/widget/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    _animation = Tween<double>(begin: 1, end: 0).animate(_controller);

    _controller.addListener(() {
      if (mounted && context.mounted) {
        setState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.repeat();
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the AnimationController properly.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<TransactionModel> list = [
      TransactionModel(
          image: "assets/images/Amazon.png",
          name: "Amazon",
          date: "24, Ocak,2024",
          ammount: "-103.56\₺"),
      TransactionModel(
          image: "assets/images/Logo.png",
          name: "Trendyol",
          date: "22, Ocak,2024",
          ammount: "-34.16\₺"),
      TransactionModel(
          image: "assets/images/Logo 3.png",
          name: "Apple ",
          date: "15, Ocak,2024",
          ammount: "-1000.92\₺"),
      TransactionModel(
          image: "assets/images/Logo 2.png",
          name: "Starbucks",
          date: "12, Ocak,2024",
          ammount: "-1200.18\₺"),
      TransactionModel(
          image: "assets/images/Logo 4.png",
          name: "Mastercard",
          date: " 3, Ocak,2024",
          ammount: "-1000.56\₺"),
      TransactionModel(
          image: "assets/images/briefcase.png",
          name: "Getir",
          date: " 1, Subat,2024",
          ammount: "-3300.81\₺"),
    ];
    return Scaffold(
        backgroundColor: CommonColor().backgorund1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  children: [
                    Image.asset("assets/images/al.webp"),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hoş Geldiniz!",
                          style: CommonTextStyle().style1,
                        ),
                        Text(
                          "Muhammed Ali Ud",
                          style: CommonTextStyle().style2,
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        print("object");
                      },
                      splashColor: CommonColor().background2,
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/icons/Huge-icon.png",
                        scale: 0.8,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        print("object");
                      },
                      splashColor: CommonColor().background2,
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/icons/More_Vertical.png",
                        scale: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 110,
                      left: 10,
                      right: 10,
                      child: Column(
                        children: [
                          const Text(
                            "5,643.50 \₺",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            "Mevcut Bakiye",
                            style: CommonTextStyle().style2,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        top: 10,
                        left: 90,
                        right: 80,
                        child: AnimatedRotation(
                          turns: _animation.value,
                          duration: Duration(milliseconds: 0),
                          child: Image.asset(
                            "assets/images/Balance.png",
                            scale: 0.8,
                          ),
                        )),
                    Positioned(
                      top: 200,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/Base.png",
                        scale: 0.9,
                      ),
                    ),
                    const Positioned(
                      top: 310,
                      left: 10,
                      child: Text(
                        "İşlemlerim",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    const Positioned(
                      top: 310,
                      right: 10,
                      child: Text(
                        "Bu Ay",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 350,
                      child: Container(
                        height: 400,
                        width: 430,
                        decoration: BoxDecoration(
                          color: CommonColor().bluebg,
                          borderRadius:
                              BorderRadius.circular(10), // Add a border radius
                        ),
                        child: ListView.builder(
                          physics: RangeMaintainingScrollPhysics(),
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            var data = list[index];
                            return CupertinoContextMenu(
                              actions: [
                                CupertinoContextMenuAction(
                                    onPressed: () {
                                      GoRouter.of(context).pop();
                                    },
                                    child: Text(
                                      "Detaylı Görüntüle",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(255, 236, 177, 177)),
                                    )),
                                CupertinoContextMenuAction(
                                    onPressed: () {
                                      GoRouter.of(context).pop();
                                    },
                                    child: Text(
                                      "Geri Dön",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(255, 236, 177, 177)),
                                    ))
                              ],
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 10),
                                child: CustomCard(
                                  image: data.image,
                                  name: data.name,
                                  date: data.date,
                                  ammount: data.ammount,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
