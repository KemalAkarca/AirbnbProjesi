import 'package:flutter/material.dart';
import 'package:flutter_text/mainpage/anaSayfa.dart';

class HomesContent extends StatelessWidget {
  const HomesContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GenisCardYapisi(
              title: "Continue searching for homes in Çeşme",
              tarih: "Jul 24-30",
              ikon: Icon(Icons.keyboard_arrow_right),
              resim_yolu: "resimler/tbilis.jpg"),
          SagaKaydirmaBasligi(baslik: "Recently viewed homes"),
          SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  KaydirmaliKucukCard(
                      imageUrl: "resimler/img1.jpg",
                      location: "Fethiye, Muğla",
                      details: "5 beds",
                      rating: "4.75"),
                  KaydirmaliKucukCard(
                      imageUrl: "resimler/img2.jpg",
                      location: "Baku, Azerbaycan",
                      details: "3 beds",
                      rating: "4.75"),
                  KaydirmaliKucukCard(
                      imageUrl: "resimler/img3.jpg",
                      location: "Stockholm, Sweden",
                      details: "2 beds",
                      rating: "4.75"),
                  KaydirmaliKucukCard(
                      imageUrl: "resimler/img4.jpg",
                      location: "Sapanca, Sakarya",
                      details: "2 beds",
                      rating: "4.75"),
                  KaydirmaliKucukCard(
                      imageUrl: "resimler/img5.jpg",
                      location: "Daegu, South Korea",
                      details: "2 beds",
                      rating: "4.75"),
                ],
              )),
          SagaKaydirmaBasligi(baslik: "Stay near Rustavelli"),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img6.jpg",
                  location: "Apartment in Esenyurt",
                  details: "7,653 ₺ for 5 nights ",
                  rating: "4.75",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img7.jpg",
                  location: "Tinyhouse in Çeşme",
                  details: "15,345 ₺ for 3 nights ",
                  rating: "4.75",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img8.jpg",
                  location: "Home in Göcek",
                  details: "11,053 ₺ for 4 nights ",
                  rating: "4.75",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img9.jpg",
                  location: "Loft House in Marmaris",
                  details: "11,653 ₺ for 3 nights ",
                  rating: "4.75",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img10.jpg",
                  location: "Apartment in Fethiye",
                  details: "7,653 ₺ for 3 nights ",
                  rating: "4.75",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img11.jpg",
                  location: "House in Alaçatı",
                  details: "9,653 ₺ for 3 nights ",
                  rating: "4.75",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img5.jpg",
                  location: "Apartment in Bahçelievler",
                  details: "8,603 ₺ for 3 nights ",
                  rating: "4.75",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img2.jpg",
                  location: "Apartment in Kadıköy",
                  details: "13,653 ₺ for 3 nights ",
                  rating: "4.75",
                  guestFavorite: true,
                ),
              ],
            ),
          ),
          SagaKaydirmaBasligi(baslik: "Available for similar dates"),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img12.jpg",
                  location: "Daegu, South Korea",
                  details: "2 beds",
                  rating: "4.75",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img13.jpg",
                  location: "Daegu, South Korea",
                  details: "2 beds",
                  rating: "4.75",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img14.jpg",
                  location: "Daegu, South Korea",
                  details: "2 beds",
                  rating: "4.75",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img15.jpg",
                  location: "Daegu, South Korea",
                  details: "2 beds",
                  rating: "4.75",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img16.jpg",
                  location: "Daegu, South Korea",
                  details: "2 beds",
                  rating: "4.75",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img17.jpg",
                  location: "Daegu, South Korea",
                  details: "2 beds",
                  rating: "4.75",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img8.jpg",
                  location: "Daegu, South Korea",
                  details: "2 beds",
                  rating: "4.75",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img3.jpg",
                  location: "Daegu, South Korea",
                  details: "2 beds",
                  rating: "4.75",
                  guestFavorite: true,
                ),
              ],
            ),
          ),
          SagaKaydirmaBasligi(baslik: "Places to stay in Kadıköy"),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img18.jpg",
                  location: "Room in Caferağa",
                  details: "2,460 ₺ for 2 nights",
                  rating: "4.86",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img29.jpg",
                  location: "Room in Osmanağa",
                  details: "2,120 ₺ for 2 nights",
                  rating: "4.85",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img20.jpg",
                  location: "Room in Caferağa",
                  details: "3,591 ₺ for 2 nights",
                  rating: "4.92",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img21.jpg",
                  location: "Room in Istanbul",
                  details: "2,550 ₺ for 2 nights",
                  rating: "4.83",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img22.jpg",
                  location: "Room in Acıbadem",
                  details: "2,398 ₺ for 2 nights ",
                  rating: "4.83",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img23.jpg",
                  location: "Room in Osmanağa",
                  details: "3,392 ₺ for 2 nights",
                  rating: "5.0",
                  guestFavorite: true,
                ),
              ],
            ),
          ),
          SagaKaydirmaBasligi(baslik: "Check out homes in London"),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img24.jpg",
                  location: "Room in London",
                  details: "4,173 ₺ for 2 nights",
                  rating: "4.88",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img25.jpg",
                  location: "Room in Twickenham",
                  details: "3,912 ₺ for 2 nights",
                  rating: "4.78",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img26.jpg",
                  location: "Room in London",
                  details: "6,259 ₺ for 2 nights",
                  rating: "4.95",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img27.jpg",
                  location: "Room in London",
                  details: "4.890 ₺ for 2 nights",
                  rating: "4.94",
                  guestFavorite: true,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img28.jpg",
                  location: "Room in London",
                  details: "5.998 for 2 nights",
                  rating: "4.96",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCard(
                  imageUrl: "resimler/img29.jpg",
                  location: "Shared room in London",
                  details: "3,260 for 2 nights",
                  rating: "4.85",
                  guestFavorite: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}