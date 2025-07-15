import 'package:flutter/material.dart';

import 'package:flutter_text/mainpage/anaSayfa.dart';

class ServicesContent extends StatefulWidget {
  const ServicesContent({super.key});

  @override
  State<ServicesContent> createState() => _ServicesContentState();
}

class _ServicesContentState extends State<ServicesContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Discover services on Airbnb",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ],
          ),
          SagaKaydirmaBasligi(baslik: "Photography"),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv1.png",
                    location: "Stylish vintage car photo shoot Tour",
                    details: "Rome,Italy",
                    rating: "From 2,583 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv2.png",
                    location: "Photo session at the Metropolitan Museum ",
                    details: "New York/United States",
                    rating: "From 12,052 ₺ /guest",
                    guestFavorite: true),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv3.png",
                    location: "Sunny French Riviera photo sessions by Claire",
                    details: "Cannes/France",
                    rating: "From 4,227 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv4.png",
                    location: "Aerial and ground photograph by Daniel",
                    details: "Fort Lauderdale/United States",
                    rating: "From 10,043 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv5.png",
                    location: "Downtown urban portraits by J C",
                    details: "Mexico City/Mexico",
                    rating: "From 2,804 ₺ /group",
                    guestFavorite: false),
              ],
            ),
          ),
          SagaKaydirmaBasligi(baslik: "Chefs"),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv6.png",
                    location: "Hyperlocal, foraged fare by Clair ",
                    details: "Budapest,Hungary",
                    rating: "From 1.968 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv7.png",
                    location: "The Vegan Experience: Plant Based Private Chef",
                    details: "Antalya/Turkiye",
                    rating: "From 2,009 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv8.png",
                    location: "Sunny French Riviera photo sessions by Claire",
                    details: "Cannes/France",
                    rating: "From 4,227 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv9.png",
                    location: "Southern Soul wth a French Twist by Chef Ponder",
                    details: "Bratislava/Slovakia",
                    rating: "From 1,808 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv10.png",
                    location: "Wholesome flavors by Fernanda",
                    details: "Tbilis/Georgia",
                    rating: "From 3,558 ₺ /guest",
                    guestFavorite: false),
              ],
            ),
          ),
          SagaKaydirmaBasligi(baslik: "Training"),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv11.png",
                    location: "Total Body Training by Peter",
                    details: "Pasadena,United States",
                    rating: "From 2,009 ₺ /guest",
                    guestFavorite: true),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv12.png",
                    location: "High-Energy workouts by Vicky",
                    details: "Redondo Beach,United States",
                    rating: "From 6,428 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv13.png",
                    location: "Personal Training & Group Fitness",
                    details: "Westmond,Canada",
                    rating: "From 3,520 ₺ /guest",
                    guestFavorite: true),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv14.png",
                    location: "Yoga and embodiment by Julia",
                    details: "Tirana/Albania",
                    rating: "From 1,004 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv15.png",
                    location: "Ritual yoga by Ana",
                    details: "Mexico City/Mexico",
                    rating: "From 863 ₺ /guest",
                    guestFavorite: false),
              ],
            ),
          ),
          SagaKaydirmaBasligi(baslik: "Massage"),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv16.png",
                    location: "Got Your Back London Massage Theraphy",
                    details: "Greater London,United Kingdom",
                    rating: "From 4,821 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv17.png",
                    location: "Recovery and relaxation by Deisy",
                    details: "Los Angeles,United States",
                    rating: "From 5,182 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv18.png",
                    location: "Relaxation and Theraputix Massages by Remi",
                    details: "Santa Monica,United States",
                    rating: "From 8,035 ₺ /guest",
                    guestFavorite: true),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv19.png",
                    location: "Aromatheraputic massage by Jenna",
                    details: "Falmouth,United States",
                    rating: "From 7,231 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv20.png",
                    location: "Relax and Renew by Miguel",
                    details: "Madrid,Spain",
                    rating: "From 6,026 ₺ /guest",
                    guestFavorite: false),
              ],
            ),
          ),
          SagaKaydirmaBasligi(baslik: "Makeup"),
          SizedBox(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv21.png",
                    location: "Vintage-inspired hair and makeup by Ria",
                    details: "Orlanda, United States",
                    rating: "From 4,821 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv22.png",
                    location: "Mobile beauty in Las Vegas by Kailey",
                    details: "Las Vegas,United States",
                    rating: "From 5,182 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv23.png",
                    location: "Makeup application by Svetlana",
                    details: "Miami,United States",
                    rating: "From 26,112 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv24.png",
                    location: "Glam Makeup and Hair by Aljane",
                    details: "Los Angelas,United States",
                    rating: "From 4,071 ₺ /guest",
                    guestFavorite: false),
                KaydirmaliBuyukCardServ(
                    imageUrl: "resimler/serv25.png",
                    location: "Makeup for any occasion by Leslie",
                    details: "Ibiza,Spain",
                    rating: "From 6,026 ₺ /guest",
                    guestFavorite: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KaydirmaliBuyukCardServ extends StatefulWidget {
  final String imageUrl;
  final String location;
  final String details;
  final String rating;
  final bool guestFavorite;

  const KaydirmaliBuyukCardServ({
    super.key,
    required this.imageUrl,
    required this.location,
    required this.details,
    required this.rating,
    required this.guestFavorite,
  });

  @override
  State<KaydirmaliBuyukCardServ> createState() =>
      _KaydirmaliBuyukCardServState();
}

class _KaydirmaliBuyukCardServState extends State<KaydirmaliBuyukCardServ> {
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
                          "Popular",
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
