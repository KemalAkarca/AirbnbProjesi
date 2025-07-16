import 'package:flutter/material.dart';
import 'package:flutter_text/experiencepage/experiences_content.dart';
import 'package:flutter_text/views/trips_page_detail.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //List BUTONU

            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26.0, vertical: 13),
                child: CircleAvatar(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        minimumSize: const Size(70, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        padding: EdgeInsets
                            .zero, // Container margin ve boyutları kontrol ettiği için padding sıfır
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.list,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            //Trips Yazi
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 16), // Soldan ve sağdan padding
              child: Text(
                "Trips",
                style: TextStyle(
                  color: Colors.black, // Siyah yazı rengi
                  fontSize: 32, // Büyük boyut
                  fontWeight: FontWeight.bold, // Kalın yazı
                ),
              ),
            ),
            const SizedBox(height: 16),
            //bildirimli card
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: Colors.white,
                elevation: 16, // Gölge derinliği
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Köşeleri yuvarlat
                ),
                child: Container(
                  height: 115,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 8),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blueAccent,
                                  child: Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    "Complete your profile to help your host get to know you",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                )
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 48,
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size(0, 0),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Get started",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            //Kaş Başlığı
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Kaş",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //Büyük CARD
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                elevation: 8,
                child: SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Resim bölümü
                      Container(
                        width: double.infinity,
                        height: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        margin: EdgeInsets.all(8),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: SizedBox.expand(
                                child: Image.asset(
                                  "resimler/kasvilla.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                height: 30,
                                width: 80,
                                alignment: Alignment.center,
                                child: Text(
                                  "In 4 weeks",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      //home in kaş
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16), // Soldan ve sağdan padding
                        child: Text(
                          "Home in Kaş",
                          style: TextStyle(
                            color: Colors.black, // Siyah yazı rengi
                            fontSize: 26, // Büyük boyut
                            fontWeight: FontWeight.bold, // Kalın yazı
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: RichText(
                          text: TextSpan(
                              text: "Aug 9-16",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 16),
                              children: [
                                TextSpan(
                                  text: " ~ ",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 16),
                                ),
                                TextSpan(
                                  text: "Hosted by Jamie",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 16),
                                ),
                              ]),
                        ),
                      ),
                      //Divider
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Divider(
                          indent: 16,
                          endIndent: 16,
                          thickness: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //detay adres
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "Lé Efsun Konut",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "Sitesi No:6",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "Kaş,Antalya 07976",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //text Button
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      6), // Daha az yuvarlak köşe
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 14), // Daha büyük boyut
                                minimumSize: const Size(
                                    0, 48), // Minimum yükseklik garantisi
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Get directions",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //Sayaç
            AsagiTimeLineTile(),
            //Yapılacaklar Listesi
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border.all(color: Colors.grey.shade200, width: 1),
              ),
              child: SizedBox(
                height: 325,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8),
                      child: Text(
                        "Discover experience for your trip >",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          KaydirmaliBuyukCardeX(
                            imageUrl: "resimler/kekova1.png",
                            location:
                                "Explore the Sunken City of Kekova by boat with lunch",
                            details: "From 3.000 ₺ /guest",
                            rating: "",
                            guestFavorite: false,
                          ),
                          KaydirmaliBuyukCardeX(
                            imageUrl: "resimler/kekova3.png",
                            location: "Craft your own Turkish mosaic lamp",
                            details: "From 640 ₺ /guest",
                            rating: "",
                            guestFavorite: false,
                          ),
                          KaydirmaliBuyukCardeX(
                            imageUrl: "resimler/kekova2.png",
                            location:
                                "Natural canyon with canoeing, paddle surfing and swimming",
                            details: "From 400 ₺ /guest",
                            rating: "",
                            guestFavorite: false,
                          ),
                          KaydirmaliBuyukCardeX(
                            imageUrl: "resimler/kekova4.png",
                            location:
                                "Take a buggy safari with the locals in the Taurus Mountains",
                            details: "From 2.250 ₺ /guest",
                            rating: "",
                            guestFavorite: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            YukariTimeLineTile(),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(25)),
                child:Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Flexible(
      flex: 2,
      child: Text(
        "Find past trips in your Profile >",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ),
    Flexible(
      flex: 1,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 60, 
          maxHeight: 60, 
        ),
        child: Image.asset(
          "resimler/valiz.jpeg",
          fit: BoxFit.contain,
        ),
      ),
    ),
  ],
)

              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}
