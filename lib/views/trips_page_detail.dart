import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class AsagiTimeLineTile extends StatelessWidget {
  const AsagiTimeLineTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.0,
          isFirst: true,
          indicatorStyle: IndicatorStyle(
            width: 40,
            height: 40,
            padding: const EdgeInsets.only(left: 16),
            indicator: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              alignment: Alignment.center,
              child: const Text(
                "9",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 104, 102, 102),
                ),
              ),
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "resimler/kapi1.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        "Check in after 3:00 PM",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          afterLineStyle: LineStyle(color: Colors.grey.shade200, thickness: 1),
        ),
        Positioned(
          top: 15,
          left: 28,
          child: const Text(
            "Sat",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class YukariTimeLineTile extends StatelessWidget {
  const YukariTimeLineTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.0,
          isLast: true,
          indicatorStyle: IndicatorStyle(
            width: 40,
            height: 40,
            padding: const EdgeInsets.only(left: 16),
            indicator: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade200,
              ),
              alignment: Alignment.center,
              child: const Text(
                "16",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 104, 102, 102),
                ),
              ),
            ),
          ),
          endChild: Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "resimler/kapi2.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        "Check out before 11:00 AM",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          beforeLineStyle: LineStyle(color: Colors.grey.shade200, thickness: 1),
        ),
        Positioned(
          top: 40,
          left: 26,
          child: const Text(
            "Sat",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
