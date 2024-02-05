import 'package:e_cuzdan/common/common_color.dart';
import 'package:e_cuzdan/common/common_textstyle.dart';
import 'package:e_cuzdan/features/wallet/model/card_model.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardTab extends StatefulWidget {
  const CardTab({super.key});

  @override
  State<CardTab> createState() => _CardTabState();
}

class _CardTabState extends State<CardTab> {
  List<CardModel> cardlist = [
    CardModel(
        number: "4987 4900 0000 0002", validupto: "12/26", name: "Muhammed"),
    CardModel(number: "5311 5700 0000 0005", validupto: "02/25", name: "Ali"),
    CardModel(
        number: "9792 0200 0000 0001", validupto: "06/28", name: "Muhammed"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor().backgorund1,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: 400,
              child: SizedBox(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Swiper(
                      axisDirection: AxisDirection.left,
                      physics: const ClampingScrollPhysics(),
                      autoplayDisableOnInteraction: true,
                      layout: SwiperLayout.STACK,
                      duration: Duration.microsecondsPerMillisecond,
                      // autoplayDelay: Duration.secondsPerDay,
                      autoplay: true,
                      allowImplicitScrolling: true,

                      itemWidth: 350,
                      itemHeight: 220,
                      itemCount: cardlist.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var data = cardlist[index];
                        return CreditCard(
                          name: data.name,
                          number: data.number,
                          validupto: data.validupto,
                        );
                      },
                      // pagination: const DotSwiperPaginationBuilder(space: 10),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/glass icon 1.png",
                    scale: 1,
                  ),
                  Image.asset("assets/images/glass icon 2.png"),
                  Image.asset("assets/images/3.png"),
                  Image.asset("assets/images/4.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: Container(
                height: 330,
                width: 420,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          CommonColor().backgorund1,
                          CommonColor().shine.withOpacity(0.3)
                        ]),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: CommonColor().shine.withOpacity(0.3))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/icons/Huge-icon-1.png",
                              scale: 0.7,
                            ),
                            const Text(
                              "Kart Ekle",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 120),
                          child: Text(
                            "Banka/kredi kartınızı ekleyin",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                color: Color(0xFF7B78AA)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 15, left: 15, top: 10),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide: BorderSide(
                                            color: CommonColor().shine)),
                                    contentPadding: const EdgeInsets.only(
                                        left: 20, right: 10, top: 3, bottom: 3),
                                    hintFadeDuration:
                                        const Duration(milliseconds: 1000),
                                    hintText: "Kart Numarası",
                                    hintStyle: CommonTextStyle().style2,
                                    hoverColor:
                                        CommonColor().shine.withOpacity(0.3)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide: BorderSide(
                                            color: CommonColor().shine)),
                                    contentPadding: const EdgeInsets.only(
                                        left: 20, right: 10, top: 3, bottom: 3),
                                    hintFadeDuration:
                                        const Duration(milliseconds: 1000),
                                    hintText: "Kart sahibinin adı",
                                    hintStyle: CommonTextStyle().style2,
                                    hoverColor:
                                        CommonColor().shine.withOpacity(0.3)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 180,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: BorderSide(
                                                  color: CommonColor().shine)),
                                          contentPadding: const EdgeInsets.only(
                                              left: 20,
                                              right: 10,
                                              top: 3,
                                              bottom: 3),
                                          hintFadeDuration: const Duration(
                                              milliseconds: 1000),
                                          hintText: "Son Kullanma Tarihi",
                                          hintStyle: CommonTextStyle().style2,
                                          hoverColor: CommonColor()
                                              .shine
                                              .withOpacity(0.3)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 170,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: BorderSide(
                                                  color: CommonColor().shine)),
                                          contentPadding: const EdgeInsets.only(
                                              left: 20,
                                              right: 10,
                                              top: 3,
                                              bottom: 3),
                                          hintFadeDuration: const Duration(
                                              milliseconds: 1000),
                                          hintText: "Güvenlik Kodu",
                                          hintStyle: CommonTextStyle().style2,
                                          hoverColor: CommonColor()
                                              .shine
                                              .withOpacity(0.3)),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 44,
                                width: 138,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xFF0DA6C2),
                                          Color(0xFF0E39C6)
                                        ])),
                                child: const Center(
                                  child: Text(
                                    "Kayıt Et",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  String number;
  String validupto;
  String name;
  CreditCard({
    Key? key,
    required this.number,
    required this.validupto,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colorlist1 = [const Color(0xFF320DAF)];
    List<Color> colorlist2 = [const Color(0xFF9327F0)];
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                colorlist2[0],
                colorlist1[0],
              ]),
          borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 50),
          child: Row(
            children: [
              Image.asset(
                "assets/images/EMV Chip.png",
                scale: 0.8,
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset("assets/images/Contactless Indicator.png")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, right: 40),
          child: Text(
            number,
            style: const TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Row(
            children: [
              const Text(
                "Geçerlilik\nTarihi",
                style: TextStyle(
                    fontSize: 8,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                validupto,
                style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 15, left: 15, bottom: 10),
          child: Row(
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Spacer(),
              Image.asset(
                "assets/images/Payment System Logo.png",
                scale: 1.5,
              )
            ],
          ),
        )
      ]),
    );
  }
}
