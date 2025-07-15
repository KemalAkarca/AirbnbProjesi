import 'package:flutter/material.dart';


import 'package:flutter_text/views/wishlist_card_model.dart';


class WishlistPage extends StatelessWidget {
  WishlistPage({super.key});

  // WishlistItem listesi (örnek veriler)
  final List<WishlistCardModel> wishlistItems = [
    WishlistCardModel(resimYolu: 'resimler/img10.jpg', detail: 'Recently viewed', savedNumber: 0),
    WishlistCardModel(resimYolu: 'resimler/img11.jpg', detail: 'Tiflis, Gürcistan 2025', savedNumber: 1),
    WishlistCardModel(resimYolu: 'resimler/boskalp.png', detail: 'Colombo, Sri Lanka 2025', savedNumber: 1),
    WishlistCardModel(resimYolu: 'resimler/img14.jpg', detail: 'Tiflis, Gürcistan 2025', savedNumber: 1),
    WishlistCardModel(resimYolu: 'resimler/img16.jpg', detail: 'Incheon, South Korea 2024', savedNumber: 0),
  ];

  // Recently viewed kartı içindeki küçük grid resimleri
  final List<String> recentlyViewedImages = [
    'resimler/img10.jpg',
    'resimler/img11.jpg',
    'resimler/img14.jpg',
    'resimler/img16.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea( // Cihazın çentik, durum çubuğu gibi alanlarına girmesin diye kullanılır
      child: Scaffold(
        backgroundColor: Colors.white, // Arka plan beyaz
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Çocukları sola hizala
          children: [
            //edit butonu
            
           Align(
  alignment: Alignment.topRight,
  child: Container(
    margin: const EdgeInsets.only(right: 25, top: 13),
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey.shade200,
        minimumSize: const Size(70, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.zero, // Container margin ve boyutları kontrol ettiği için padding sıfır
      ),
      onPressed: () {
        
      },
      child: const Text(
        "Edit",
        style: TextStyle(color: Colors.black,fontSize: 16),
      ),
    ),
  ),
),

            //Wishlist yazı
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16), // Soldan ve sağdan padding
              child: Text(
                "Wishlists",
                style: TextStyle(
                  color: Colors.black, // Siyah yazı rengi
                  fontSize: 32, // Büyük boyut
                  fontWeight: FontWeight.bold, // Kalın yazı
                ),
              ),
            ),
            const SizedBox(height: 16), // Başlık ile grid arasında boşluk
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8), // Grid view dış kenar boşluğu
                child: GridView.builder(
                  itemCount: wishlistItems.length, // Toplam grid elemanı sayısı
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 sütunlu grid
                    crossAxisSpacing: 12, // Sütunlar arası boşluk
                    mainAxisSpacing: 12, // Satırlar arası boşluk
                    childAspectRatio: 1, // Kare oran (genişlik=yükseklik)
                  ),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      // İlk eleman: Recently viewed kartı
                      return AspectRatio(
                       aspectRatio: 1,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 4,
            clipBehavior: Clip.antiAlias, // Clip içerikler köşe yuvarlamaya uysun
            child: GridView.builder(
              itemCount: recentlyViewedImages.length,
              physics: const NeverScrollableScrollPhysics(), // Scroll engelle
              padding: EdgeInsets.zero, // İç padding sıfırla
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 sütun
                crossAxisSpacing: 1, // Minimum boşluk
                mainAxisSpacing: 1, // Minimum boşluk
                childAspectRatio: 1, // Kare görünüm
              ),
              itemBuilder: (context, imgIndex) {
                return Image.asset(
                  recentlyViewedImages[imgIndex],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          "Recently viewed",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 2),
        const Text(
          "Today",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ],
    ),
                      );
                    } else {
                      // Diğer wishlist kartları
                      final item = wishlistItems[index];
                      return AspectRatio(
                        aspectRatio: 1, // Kare oran
                        child: WishlistCard(item: item), // Kart widget'ı çağır
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Tek bir wishlist kartını gösteren widget
class WishlistCard extends StatelessWidget {
  final WishlistCardModel item; // Wishlist verisi
  const WishlistCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Sol hizalı içerik
      children: [
        Expanded(
          
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Kart resmi yuvarlak köşeli
              child: Card(
                
                margin: EdgeInsets.zero, // Margin sıfırlandı
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Card köşeleri yuvarlak
                ),
                elevation: 4, // Hafif gölge
                child: Image.asset(
                  item.resimYolu,
                  fit: BoxFit.cover, // Resim kartı doldursun
                  width: double.infinity, // Genişliği tamamen kapsasın
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4), // Kart altındaki yazı arası boşluk
        Text(
          item.detail,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold, // Kalın yazı
          ),
        ),
        const SizedBox(height: 2),
        Text(
          item.savedNumber > 0
              ? "${item.savedNumber} Saved"
              : "Today", // Saved veya Today yaz
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey, // Gri küçük yazı
          ),
        ),
      ],
    );
  }
}
