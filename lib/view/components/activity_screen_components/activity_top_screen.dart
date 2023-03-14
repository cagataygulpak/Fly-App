import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../../../constant/constant.dart';

class ActivityTopScreen extends StatelessWidget {
  const ActivityTopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Stack(
            children: [
              Lottie.asset(
                "${lottieBasePath}plane_cloud.json",
                filterQuality: FilterQuality.high,
                fit: BoxFit.fitHeight,
              ),
              Positioned(
                top: 40,
                left: 20,
                child: SvgPicture.asset(
                  "${svgBasePath}bell.svg",
                  height: 20,
                  width: 20,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
              Positioned(
                top: 25,
                right: 20,
                child: Container(
                  height: 50,
                  width: 150,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        child: SvgPicture.asset("${svgBasePath}avatar.svg"),
                      ),
                      const Material(
                        color: Colors.transparent,
                        child: Text(
                          "Shopie W.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_downward_outlined,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
