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
          lineXY: 0.0, // Çubuğu tamamen sola hizala
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
            padding: EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                "resimler/kapi1.jpeg",
                                fit: BoxFit.cover,
                                height: 85,
                                width: 85,
                              ))),
                      SizedBox(
                        width: 16,
                      ),
                      const Text(
                        "Check in after 3:00 PM",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          afterLineStyle: LineStyle(color: Colors.grey.shade200, thickness: 1),
        ),
        Positioned(
          top: 15, // 🔔 Burayı ince ayarlayabilirsin
          left: 16 +
              20 -
              8, // 16 (padding) + 20 (radius) - 10 (yaklaşık text offset)
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
          isLast: true, // 🔔 Çizgi yukarı doğru olacak
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
            child: SizedBox(
              width: double.infinity,
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
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(2, 2),
                              blurRadius: 8,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            "resimler/kapi2.jpeg",
                            fit: BoxFit.cover,
                            height: 85,
                            width: 85,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          "Check out before 11:00 AM",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          beforeLineStyle: LineStyle(
            color: Colors.grey.shade200,
            thickness: 1,
          ),
        ),
        Positioned(
          top: 40, // 🔔 Yuvarlak indicator'dan sonra altına konumlandır
          left: 16 + 20 - 10, // aynı hizayı koru
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
