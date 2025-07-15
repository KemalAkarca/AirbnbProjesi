import 'package:flutter/material.dart';
import 'package:flutter_text/mainpage/anaSayfa.dart';
import 'package:flutter_text/views/messages_page.dart';
import 'package:flutter_text/views/profile_page.dart';
import 'package:flutter_text/views/trips_page.dart';
import 'package:flutter_text/views/wishlist_page.dart';

class Bottomnavbar extends StatefulWidget {
  final int currentIndex;
  final Function(int) ontap;

  const Bottomnavbar({
    super.key,
    required this.currentIndex,
    required this.ontap,
  });

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: widget.currentIndex,
      onTap: widget.ontap,  // onTap: widget.ontap: Artık push yapmıyoruz, sadece parent'a index'i iletiyoruz. Böylece Scaffold hep aynı kalıyor, sadece body değişiyor.
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFFE81948), // Seçili item'ın yazısı pembe
      unselectedItemColor: Colors.grey, // Diğerlerinin yazısı gri
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "resimler/explore.png",
            width: 24,
            height: 24,
            color: widget.currentIndex == 0 ? Color(0xFFE81948) : Colors.grey,
          ),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "resimler/wishlists.png",
            width: 24,
            height: 24,
            color: widget.currentIndex == 1 ? Color(0xFFE81948) : Colors.grey,
          ),
          label: "Wishlist",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "resimler/trips.png",
            width: 24,
            height: 24,
            color: widget.currentIndex == 2 ? Color(0xFFE81948) : Colors.grey,
          ),
          label: "Trips",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "resimler/messages.png",
            width: 24,
            height: 24,
            color: widget.currentIndex == 3 ? Color(0xFFE81948) : Colors.grey,
          ),
          label: "Messages",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "resimler/profile.png",
            width: 24,
            height: 24,
            color: widget.currentIndex == 4 ? Color(0xFFE81948) : Colors.grey,
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
