import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: IconButton(
                      icon: const Icon(Icons.notifications_none,
                          color: Colors.black),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Profile Card
              Card(
                color: Colors.white,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.black,
                              child: const Text(
                                "K",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "Kemal",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              "Guest",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            _ProfileStat(label: "Trips", value: "2"),
                            Divider(
                              endIndent: 16,
                            ),
                            _ProfileStat(label: "Review", value: "1"),
                            Divider(
                              endIndent: 16,
                            ),
                            _ProfileStat(
                                label: "Months on Airbnb", value: "10"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Grid items
              Row(
                children: [
                  Expanded(
                      child: _ProfileGridCard(
                    title: "Past trips",
                    resimYol: "resimler/pastTrips.jpeg",
                  )),
                  const SizedBox(width: 16),
                  Expanded(
                      child: _ProfileGridCard(
                    title: "Connections",
                    resimYol: "resimler/connections.jpeg",
                  )),
                ],
              ),
              const SizedBox(height: 16),
              // Become a host
              Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: Image.asset("resimler/homes.png.png"),
                  title: const Text(
                    "Become a host",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  subtitle: const Text(
                    "It's easy to start hosting and earn extra income.",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 16),
              // Account settings
              _Ayarlar(name: "Account settings",resim: "resimler/settings.jpeg",),
              _Ayarlar(name: "Get help",resim: "resimler/gethelp.jpeg",),
              _Ayarlar(name: "View profile",resim: "resimler/viewProfile.jpeg",),
              _Ayarlar(name: "Privacy",resim: "resimler/privacy.jpeg",),
              Divider(thickness: 1,indent: 16,endIndent: 16,),
              _Ayarlar(name: "Refer a host",resim: "resimler/refer.jpeg",),
              _Ayarlar(name: "Find a co-host",resim: "resimler/find.jpeg",),
              _Ayarlar(name: "Legal",resim: "resimler/legal.jpeg",),
              _Ayarlar(name: "Log out",resim: "resimler/logout.jpeg",),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _Ayarlar extends StatelessWidget {
  final String name;
  final String resim;
  const _Ayarlar({
    required this.name,
    required this.resim,
    
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(resim,fit: BoxFit.cover,),
      title:  Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black),
      onTap: () {},
    );
  }
}

class _ProfileStat extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileStat({required this.label, required this.value, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

class _ProfileGridCard extends StatelessWidget {
  final String title;
  final String resimYol;

  const _ProfileGridCard(
      {required this.title, required this.resimYol, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                resimYol, // 🔔 buraya istediğin image asset path’i vereceksin
                width: 60,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title, // 🔔 parametre olarak `title` kullanabilirsin
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
