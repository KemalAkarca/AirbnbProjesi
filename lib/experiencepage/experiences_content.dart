import 'package:flutter/material.dart';
import 'package:flutter_text/mainpage/anaSayfa.dart';

class ExperiencesContent extends StatelessWidget {
  const ExperiencesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SagaKaydirmaBasligi(baslik: "Airbnb Originals"),
          SizedBox(
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/arturo obegero.png",
                  location: "Find your fashion inspiration with Arturo Obegero",
                  details: "Paris,France",
                  rating: "From 7,053 ₺/guest",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/donnguyen.jpg",
                  location: "Bet big and eat well at Don Nyugen's casino night",
                  details: "Los Angeles, United States",
                  rating: "From 6.009 ₺/guest",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/agenda.png.jpg",
                  location: "Celebrate happy hour with Ghia's founder",
                  details: "Eskisehir/Turkiye",
                  rating: "From 7,053 ₺/guest",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/gigigorgeous.jpg",
                  location: "Get glam with beauty icon Gigi Gorgeous",
                  details: "Los Angeles, United States",
                  rating: "From 6.009 ₺/guest",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/simonhill.jpg",
                  location:
                      "Nutritional eating, forage & feast with Simon Hill",
                  details: "Los Angeles, United States",
                  rating: "From 11.009 ₺/guest",
                  guestFavorite: false,
                ),
              ],
            ),
          ),
          SagaKaydirmaBasligi(baslik: "Good for Groups"),
          SizedBox(
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/discover.jpg",
                  location: "Discover Kekova's history and coves by boat",
                  details: "From 6.000 ₺ /group",
                  rating: "",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/mediterranean.jpg",
                  location: "Explore daily life in a Mediterranean village",
                  details: "From 7.000 ₺ /guest",
                  rating: "",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/coolyourself.jpg",
                  location: "Cool yourself int he waters of Kekova",
                  details: "From 950 ₺/guest",
                  rating: "",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/sunset.jpg",
                  location: "Explore kekova Sunset",
                  details: "From 7.500 ₺ /guest",
                  rating: "",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/friendlycrew.jpg",
                  location: "Explore Kekova With a friendly crew",
                  details: "From 4.000 ₺ /guest",
                  rating: "",
                  guestFavorite: false,
                ),
              ],
            ),
          ),
          //Popular with travelers from your area
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  "Popular with travelers from your area",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SagaKaydirmaBasligi(baslik: "Experiences in Fatih"),
          SizedBox(
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/mosaiclamp.jpg",
                  location: "Craft your own Turkish mosaic lamp",
                  details: "From 750 ₺ /guest",
                  rating: "",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/yachttour.jpg",
                  location: "Small Group Yacht Tour, Unlimited Wine & Fruits",
                  details: "From 1.800 ₺ /guest",
                  rating: "",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/perfume.png",
                  location: "Create a signature scent in Istanbul",
                  details: "From 750 ₺ /guest",
                  rating: "",
                  guestFavorite: false,
                ),
                KaydirmaliBuyukCardeX(
                  imageUrl: "resimler/rooftop.png",
                  location: "Turkish Food Night & Rooftop Experince",
                  details: "From 400 ₺ /guest",
                  rating: "",
                  guestFavorite: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KaydirmaliBuyukCardeX extends StatefulWidget {
  final String imageUrl;
  final String location;
  final String details;
  final String rating;
  final bool guestFavorite;

  const KaydirmaliBuyukCardeX({
    super.key,
    required this.imageUrl,
    required this.location,
    required this.details,
    required this.rating,
    required this.guestFavorite,
  });

  @override
  State<KaydirmaliBuyukCardeX> createState() => _KaydirmaliBuyukCardeXState();
}

class _KaydirmaliBuyukCardeXState extends State<KaydirmaliBuyukCardeX> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        Container(
          width: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(4, 4),
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        widget.imageUrl,
                        height: 170,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFavorited = !isFavorited;
                        });
                      },
                      child: Icon(
                        isFavorited ? Icons.favorite : Icons.favorite_border,
                        color: isFavorited ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                  if (widget.guestFavorite)
                    Positioned(
                      left: 8,
                      top: 8,
                      child: Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 89,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Text(
                          "Guest favorite",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                widget.location,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.details,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 12,
                    ),
                    maxLines: 1, //taşmayı engellemek için
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    widget.rating,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
