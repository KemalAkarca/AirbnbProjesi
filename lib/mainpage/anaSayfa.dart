import 'package:flutter/material.dart';
import 'package:flutter_text/experiencepage/experiences_content.dart';
import 'package:flutter_text/homespage/homes_content.dart';
import 'package:flutter_text/mainpage/bottomNavBar.dart';
import 'package:flutter_text/mainpage/tabs_elemanlari.dart';
import 'package:flutter_text/servicespage/services_content.dart';
import 'package:flutter_text/views/messages_page.dart';
import 'package:flutter_text/views/profile_page.dart';
import 'package:flutter_text/views/trips_page.dart';
import 'package:flutter_text/views/wishlist_page.dart';

class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa>
    with SingleTickerProviderStateMixin {
  bool isSearchActive =
      false; //arama yapma butonu şuanda basılmadı basılınca textfielda dönüşecek
  final TextEditingController _controller =
      TextEditingController(); //TextField'in içindeki yazıyı programatik olarak okumak, değiştirmek veya kontrol etmek için kullanılır.
  //final dedik çünkü nesne bir kere oluşturuluyor, ama içindeki değerler değişebilir.

  late TabController
      _tabController; // late demek bu değişkeni hemen başlatmıyorum ama ileride kesinlikle başlatacağım

  int _currentIndex = 0; //uygulamanın hangi sekmesinin (tab’ının) şu anda aktif olduğunu saklayan bir durum (state) değişkenidir.

  @override
  void initState() {
    // Widget başlatıldığında çalışır
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Kullanım bittikten sonra belleği temizler
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,// hangi sayfanın gösterileceği belirlenir:
        children: [
            NestedScrollView(
          // NestedScrollView: SliverAppBar + TabBarView uyumu için
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              expandedHeight: 281, //genişlemiş halde kullanılan yüksekliği
              pinned: true, //scroll edildiğinde üstte sabit kalsın
              elevation: 24,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                // Flexible yani esneyen bir alan oluşturuyoruz
                background: SafeArea(
                  // Çeşitli sayfalar için güvenli bir alan
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20), //yatay ve dikey boşluk
                    child: AppBarWithTabs(
                      isSearchActive: isSearchActive, //arama aktif mi kontrolü
                      controller: _controller, //TextEditing kontrolü
                      onTap: () {
                        setState(() {
                          isSearchActive = true;
                        }); // basınca aktif duruma getirecek.
                      },
                      tabController: _tabController, //Sekme geçişlerinin kontrolü
                    ),
                  ),
                ),
              ),
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: "Homes"),
                  Tab(text: "Experiences"),
                  Tab(text: "Services"),
                ],
              ),
            ),
          ],
          body: TabBarView(
            controller: _tabController,
            children: [
              HomesContent(), // burayı kendi widget’ınla değiştir
              ExperiencesContent(),
              ServicesContent(),
            ],
          ),
        ),
         WishlistPage(),
         TripsPage(),
         MessagesPage(),
         ProfilePage(),
        ],
        
      ),
      bottomNavigationBar: Bottomnavbar(
        currentIndex: _currentIndex, // hangi item’ın seçili olduğu kontrol edilir:
        ontap: (index) {
          setState(() {
            _currentIndex = index; //yeni değere güncellenir ve IndexedStack’in index parametresi değiştiği için ekran anında güncellenir.
          });
        },
      ),
    );
  }
}

class KaydirmaliBuyukCard extends StatefulWidget {
  final String imageUrl;
  final String location;
  final String details;
  final String rating;
  final bool guestFavorite;

  const KaydirmaliBuyukCard(
      {super.key,
      required this.imageUrl,
      required this.location,
      required this.details,
      required this.rating,
      required this.guestFavorite});

  @override
  State<KaydirmaliBuyukCard> createState() => _KaydirmaliBuyukCardState();
}

class _KaydirmaliBuyukCardState extends State<KaydirmaliBuyukCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
        ),
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
                              offset: Offset(4, 4))
                        ]),
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
                  Positioned(
                    left: 8,
                    top: 8,
                    child: widget.guestFavorite
                        ? Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 89,
                            child: Text(
                              "Guest favorite",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24)),
                          )
                        : SizedBox.shrink(),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget.location,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    widget.details,
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.star,
                    size: 14,
                    color: Colors.grey,
                  ),
                  Text(
                    widget.rating.toString(),
                    style: TextStyle(fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class KaydirmaliKucukCard extends StatefulWidget {
  final String imageUrl;
  final String location;
  final String details;
  final String rating;

  const KaydirmaliKucukCard(
      {super.key,
      required this.imageUrl,
      required this.location,
      required this.details,
      required this.rating});

  @override
  State<KaydirmaliKucukCard> createState() => _KaydirmaliKucukCardState();
}

class _KaydirmaliKucukCardState extends State<KaydirmaliKucukCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
        ),
        Container(
          width: 120,
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
                              offset: Offset(4, 4))
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        widget.imageUrl,
                        height: 120,
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
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget.location,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    widget.details,
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.star,
                    size: 14,
                    color: Colors.grey,
                  ),
                  Text(
                    widget.rating.toString(),
                    style: TextStyle(fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

// Kayan Kard için Başlık Widgetı
class SagaKaydirmaBasligi extends StatelessWidget {
  final String baslik;

  const SagaKaydirmaBasligi({required this.baslik});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  baslik,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 36,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Genişleyen kard yapısı
class GenisCardYapisi extends StatelessWidget {
  final String title;
  final String tarih;
  final Icon ikon;
  final String resim_yolu;

  const GenisCardYapisi({
    required this.title,
    required this.tarih,
    required this.ikon,
    required this.resim_yolu,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        color: Colors.white,
        elevation: 16, // Gölge derinliği
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Köşeleri yuvarlat
        ),
        child: Container(
          height: 125,
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          tarih,
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        ikon
                      ],
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  resim_yolu, // Örnek resim
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}

// Bu kısım "SearchContainer" widget'a ayrıldı
class AppBarWithTabs extends StatelessWidget {
  final bool isSearchActive;
  final TextEditingController controller;
  final VoidCallback onTap;
  final TabController tabController;

  const AppBarWithTabs({
    super.key,
    required this.isSearchActive,
    required this.controller,
    required this.onTap,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent, // Şeffaf bırakıyoruz
          borderRadius: BorderRadius.circular(60),
          child: InkWell(
            //InkWell, tıklama efekti (ripple) sağlar Ama bu efektin düzgün görünmesi için mutlaka Material widget'ın altında olması lazım
            // Ripple efektinin köşelere taşmaması veya kutunun dışına taşmaması için her iki yerde de borderRadius verilir.

            borderRadius: BorderRadius.circular(60),
            onTap: onTap,
            child: Container(
              height: 80, //arama containerıın yüksekliği

              decoration: BoxDecoration(
                  //arama containerının dış cephe ayarları
                  color: Colors.white, //rengi
                  borderRadius: BorderRadius.circular(
                      60), //yuvarlak bir görüntü vermeye çalışıyprum
                  boxShadow: [
                    //gölge vermek için
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(10, 10),
                        blurRadius: 20),
                  ]),
              child: Row(
                // buton içeriğini bu şekilde rowla sarmalıyorum
                mainAxisAlignment: MainAxisAlignment
                    .center, //buton içindeki yazının hem yatay hem de dikey merkeze alacak
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // buton içeriği elemanlarına başlıyorum
                  Icon(
                    //1. büyüteç ikonu
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(width: 8), //2. Boşluk verdim
                  SearchTextOrField(
                    isSearchActive: isSearchActive,
                    controller: controller,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TabBar(
          controller: tabController,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            TabsElemanlari(title: "Homes", resimyolu: "resimler/homes.png.png"),
            TabsElemanlari(
                title: "Experiences",
                resimyolu: "resimler/experiences.png.png"),
            TabsElemanlari(
                title: "Services", resimyolu: "resimler/services.png.png"),
          ],
        )
      ],
    );
  }
}

// Bu kısım "SearchTextOrField" widget'a ayrıldı
class SearchTextOrField extends StatelessWidget {
  final bool isSearchActive;
  final TextEditingController controller;

  const SearchTextOrField({
    super.key,
    required this.isSearchActive,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return isSearchActive
        ? Expanded(
            child: TextField(
              //textfield açılıyor
              controller: controller, // text kontrolü yapılınıyor
              autofocus: true, //Kullanıcı direkt yazmaya başlayabilir.

              decoration: InputDecoration(
                  //textfiel içeriğine bakıyorum
                  hintText: "Start your Search", //yazmadan önceki metin
                  border: InputBorder
                      .none, //TextField'ın etrafındaki çizgileri veya çerçeveyi tamamen kaldırır
                  isCollapsed:
                      true // Yani TextField sadece yazının ve içeriğin kapladığı alan kadar yer tutar padding verir yani
                  ),
              onSubmitted: (value) {
                //onSubmitted Flutter’da kullanıcı klavyede Enter veya Done tuşuna bastığında çalışan callback fonksiyonudur
                print("$value araması yapılıyor");
              },
            ),
          )
        : Text(
            // eğer basılmadıysa böyle bir text gözükür
            "Start your search",
            style: TextStyle(color: Colors.black, fontSize: 20),
          );
  }
}
