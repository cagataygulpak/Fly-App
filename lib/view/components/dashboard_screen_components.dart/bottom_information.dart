import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fly_app/constant/constant.dart';

class BottomInformation extends StatelessWidget {
  const BottomInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: const [
          TextTitles(),
          Divider(),
          Information(
            firstClock: "06:00",
            firstCity: "singapure",
            firstCityClip: "SIN",
            secondClock: "08:30",
            secondCity: "bandung",
            secondCityClip: "BAN",
            clock: 2,
            minute: 30,
            dateTime: "02, 2021",
          ),
          Divider(),
          Information(
            firstClock: "20:00",
            firstCity: "london",
            firstCityClip: "LHR",
            secondClock: "23:30",
            secondCity: "moscow",
            secondCityClip: "DME",
            clock: 10,
            minute: 20,
            dateTime: "01, 2021",
            avatar: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Text("+2"),
            ),
            firstSpacer: SizedBox(width: 10),
            secondSpacer: SizedBox(width: 5),
          ),
        ],
      ),
    );
  }
}

class Information extends StatelessWidget {
  const Information({
    super.key,
    required this.firstClock,
    required this.firstCity,
    required this.firstCityClip,
    required this.secondClock,
    required this.secondCity,
    required this.secondCityClip,
    required this.dateTime,
    this.avatar = const SizedBox(),
    this.firstSpacer = const SizedBox(),
    this.secondSpacer = const SizedBox(),
    required this.clock,
    required this.minute,
  });
  final String firstClock;
  final String firstCity;
  final String firstCityClip;
  final String secondClock;
  final String secondCity;
  final String secondCityClip;
  final int clock;
  final int minute;
  final String dateTime;
  final Widget avatar;
  final Widget firstSpacer;
  final Widget secondSpacer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(child: SvgPicture.asset("${svgBasePath}plane_info.svg")),
        20.0.width,
        Column(
          children: [
            Text(
              firstClock,
              style: const TextStyle(fontSize: 20),
            ),
            7.0.height,
            Text(firstCity).tr(),
          ],
        ),
        40.0.width,
        firstSpacer,
        Column(
          children: [
            Text(
              "${"duration".tr()}: $clock${"clock".tr()} $minute${"minute".tr()}",
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Container(
                      height: 7.5,
                      width: 7.5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 140,
                  child: Divider(),
                ),
                Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Container(
                      height: 7.5,
                      width: 7.5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(firstCityClip),
                140.0.width,
                Text(secondCityClip),
              ],
            )
          ],
        ),
        30.0.width,
        Column(
          children: [
            Text(
              secondClock,
              style: const TextStyle(fontSize: 20),
            ),
            7.0.height,
            Text(secondCity).tr(),
          ],
        ),
        80.0.width,
        secondSpacer,
        Text(
          "${"date_month".tr()} $dateTime",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        120.0.width,
        SizedBox(
          width: 100,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.green.shade300,
                child: SvgPicture.asset(
                  "${svgBasePath}avatar_1.svg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 15,
                child: CircleAvatar(
                  radius: 15,
                  child: SvgPicture.asset(
                    "${svgBasePath}avatar_2.svg",
                    fit: BoxFit.cover,
                    color: Colors.red,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                child: avatar,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TextTitles extends StatelessWidget {
  const TextTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        60.0.width,
        Text(
          "destination".tr(),
          style: const TextStyle(color: Colors.grey),
        ),
        400.0.width,
        Text(
          "date".tr(),
          style: const TextStyle(color: Colors.grey),
        ),
        170.0.width,
        Text(
          "people".tr(),
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
