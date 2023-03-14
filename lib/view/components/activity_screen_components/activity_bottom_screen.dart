import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fly_app/constant/constant.dart';

class ActivityBottomScreen extends StatelessWidget {
  const ActivityBottomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ActivityBottomScreenItem1(),
        10.0.height,
        const ActivityBottomScreenItem2(),
      ],
    );
  }
}

class ActivityBottomScreenItem2 extends StatelessWidget {
  const ActivityBottomScreenItem2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "08:00\n${"am".tr()}",
            textAlign: TextAlign.left,
          ),
        ),
        15.0.width,
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
              height: 100,
              width: 210,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Text(
                      "BDO",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("registration".tr()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ActivityBottomScreenItem1 extends StatelessWidget {
  const ActivityBottomScreenItem1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "07:00\n${"am".tr()}",
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          flex: 4,
          child: Stack(
            children: [
              Container(
                height: 140,
                width: 240,
                color: Colors.transparent,
              ),
              Positioned(
                left: 10,
                child: Container(
                  height: 140,
                  width: 210,
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          "BDO",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text("pre_flight".tr()),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                bottom: 20,
                width: 240,
                child: Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor ==
                                const Color(0xFF232931)
                            ? Colors.white
                            : Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Theme.of(context).scaffoldBackgroundColor ==
                                const Color(0xFF232931)
                            ? Colors.white
                            : Colors.black,
                        thickness: 3,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
