import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fly_app/constant/constant.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartAndCardsWidget extends StatelessWidget {
  const ChartAndCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 400,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).backgroundColor ==
                            const Color(0xFF232931)
                        ? Colors.grey.shade300
                        : Colors.transparent,
                    offset: const Offset(0, 30),
                    blurRadius: 60,
                  )
                ]),
            child: Column(
              children: const [
                TitleAndExportButtonWidget(),
                GraphicChartWidget(),
                ViewAndSalesWidget(),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CardsItem(
                    containerBackgroundColor: Color(0xFF0068FF),
                    title: "waiting_list",
                    value: "840",
                    iconBackgroundColor: Color(0xFF3EBA67),
                    icon: Icon(
                      Icons.arrow_upward_outlined,
                      color: Colors.white,
                      size: 10,
                    ),
                    valueTitle: "+1.5",
                    image: "notebook",
                  ),
                  CardsItem(
                    containerBackgroundColor: Color(0xFFC97BF3),
                    title: "completed_flights",
                    value: "235",
                    iconBackgroundColor: Color(0xFFFFFFFF),
                    icon: Icon(
                      Icons.arrow_upward_outlined,
                      color: Colors.green,
                      size: 10,
                    ),
                    valueTitle: "+0.2",
                    image: "ticket_app",
                  ),
                  CardsItem(
                    containerBackgroundColor: Color(0xFF10062B),
                    title: "total_renevue",
                    value: "\$2m",
                    iconBackgroundColor: Color(0xFFF34D50),
                    icon: Icon(
                      Icons.arrow_downward_outlined,
                      color: Colors.white,
                      size: 10,
                    ),
                    valueTitle: "-0.5",
                    image: "analysis",
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

class CardsItem extends StatelessWidget {
  const CardsItem({
    Key? key,
    required this.containerBackgroundColor,
    required this.title,
    required this.value,
    required this.iconBackgroundColor,
    required this.icon,
    required this.valueTitle,
    required this.image,
  }) : super(key: key);

  final Color containerBackgroundColor;
  final String title;
  final String value;
  final Color iconBackgroundColor;
  final Widget icon;
  final String valueTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.tr(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      value,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.white),
                    ),
                    15.0.width,
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: iconBackgroundColor,
                            ),
                            child: Center(
                              child: icon,
                            ),
                          ),
                          5.0.width,
                          Text(
                            valueTitle,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Expanded(
              child: SvgPicture.asset(
                "$svgBasePath$image.svg",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleAndExportButtonWidget extends StatelessWidget {
  const TitleAndExportButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "sales_performance".tr(),
              style: const TextStyle(fontSize: 26),
            ),
            10.0.height,
            Text("visited".tr()),
          ],
        ),
        SizedBox(
          height: 40,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.file_upload_outlined),
            label: Text("export".tr()),
          ),
        ),
      ],
    );
  }
}

class ViewAndSalesWidget extends StatelessWidget {
  const ViewAndSalesWidget({Key? key}) : super(key: key);

  final double pi = 3.1415926535897932;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: SvgPicture.asset(
                  "${svgBasePath}graphic_analysis.svg",
                  color: Colors.blueAccent,
                  height: 30,
                ),
              ),
              title: Text(
                "views".tr(),
                style: const TextStyle(fontSize: 12),
              ),
              subtitle: Text(
                21.576.toString(),
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
          const VerticalDivider(
            indent: 10,
            endIndent: 10,
          ),
          Expanded(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Transform.rotate(
                  angle: pi + (pi / 2),
                  child: SvgPicture.asset(
                    "${svgBasePath}Ticket.svg",
                    color: Colors.blueAccent,
                    height: 30,
                  ),
                ),
              ),
              title: Text(
                "sales".tr(),
                style: const TextStyle(fontSize: 12),
              ),
              subtitle: Text(
                2.564.toString(),
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GraphicChartWidget extends StatelessWidget {
  const GraphicChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SfCartesianChart(
        series: <ChartSeries>[
          SplineAreaSeries<ChartData, double>(
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            borderColor: Colors.purple,
            borderWidth: 3,
            borderDrawMode: BorderDrawMode.top,
            gradient: LinearGradient(
              colors: [
                Colors.purple.shade800,
                Colors.purple.shade100,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            splineType: SplineType.cardinal,
            opacity: 0.2,
            markerSettings: const MarkerSettings(
              isVisible: true,
              borderColor: Colors.purple,
              borderWidth: 3,
            ),
          ),
        ],
      ),
    );
  }
}
