import 'package:e_cuzdan/common/common_color.dart';
import 'package:e_cuzdan/common/common_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAccountCard extends StatefulWidget {
  const CustomAccountCard({
    Key? key,
    required this.image,
    required this.name,
    required this.value,
  }) : super(key: key);
  final String image;
  final String name;
  final bool value;

  @override
  State<CustomAccountCard> createState() => _CustomAccountCardState();
}

class _CustomAccountCardState extends State<CustomAccountCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 400,
      decoration: BoxDecoration(
          color: CommonColor().backgorund1,
          border: Border.all(color: Color(0xFF19173D)),
          borderRadius: BorderRadius.circular(60)),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          // Image.asset(widget.image),
          CircleAvatar(
            backgroundImage: AssetImage(widget.image),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                widget.name,
                style: CommonTextStyle().style1,
              ),
              SizedBox(
                height: 2,
              ),
              Spacer()
            ],
          ),
          Spacer(),
          Container(
            height: 44,
            width: 90,
            decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //       color: Colors.grey.shade50,
                //       spreadRadius: 0.1,
                //       blurRadius: 0.4)
                // ],
                borderRadius: BorderRadius.circular(60),
                color: CommonColor().backgorund1),
            child: Center(
              child: CupertinoSwitch(
                activeColor: CommonColor().shine,
                trackColor: CommonColor().background2,
                value: widget.value,
                onChanged: (value) {
                  setState(() {
                    value = false;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
