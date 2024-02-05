import 'package:e_cuzdan/common/common_color.dart';
import 'package:e_cuzdan/features/wallet/screen/CustomAccountCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AccountTab extends StatefulWidget {
  const AccountTab({super.key});

  @override
  State<AccountTab> createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor().backgorund1,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CustomAccountCard(
                image: "assets/images/al.webp",
                name: "Muhammed Ali Ud",
                value: true),
            CustomAccountCard(
                image: "assets/images/Ellipse 249.png",
                name: "Zeynep Ağrı",
                value: false),
            CustomAccountCard(
                image: "assets/images/actress1.jpeg",
                name: "Gülten Arıncı",
                value: false),
            CustomAccountCard(
                image:
                    "assets/images/WhatsApp Image 2023-10-16 at 9.47.48 PM.jpeg",
                name: "Doğan Atam",
                value: false),
          ],
        ),
      ),
    );
  }
}
