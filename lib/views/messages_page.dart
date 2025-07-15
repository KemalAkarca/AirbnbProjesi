import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  String selectedFilter = "All"; // 🔔 aktif seçili filtreyi tutuyoruz

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Messages",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        child: IconButton(
                          icon: const Icon(Icons.search, color: Colors.black),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(width: 8),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        child: IconButton(
                          icon: const Icon(Icons.settings, color: Colors.black),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    messageItem(
                      imagePath: "resimler/msg1.jpeg",
                      title: "TAN, Derya, and 2 others",
                      subtitle: "TAN: You're welcome, thank you. We are...",
                      status: "Confirmed · Aug 9 - 16 · Kaş",
                      trailing: "5/27",
                      confirmed: true,
                    ),
                    messageItem(
                      imagePath: "resimler/msg2.jpeg",
                      title: "İbrahim Halil",
                      subtitle: "Hello, you can come today, it is available",
                      status: "Apr 15 - 19 · Küçükçekmece",
                      trailing: "4/16",
                    ),
                    messageItem(
                      imagePath: "resimler/msg3.jpeg",
                      title: "Theo, Omer Berat",
                      subtitle: "Airbnb update: Reminder - Leave a review...",
                      status: "Sep 13 - 19, 2024 · Yeonnam-dong, M...",
                      trailing: "9/19/24",
                    ),
                    messageItem(
                      imagePath: "resimler/msg4.jpeg",
                      title: "Jerry, Omer Berat",
                      subtitle: "Airbnb update: Reminder - Leave a review...",
                      status: "Sep 8 - 9, 2024",
                      trailing: "9/9/24",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 Widget buildFilterButton(String label) {
  final bool isSelected = selectedFilter == label;

  return ElevatedButton(
    onPressed: () {
      setState(() {
        selectedFilter = label;
      });
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: isSelected ? Colors.black : Colors.grey.shade200,
      foregroundColor: isSelected ? Colors.white : Colors.black,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      elevation: 0,
    ),
    child: Text(label),
  );
}


  Widget messageItem({
    required String imagePath,
    required String title,
    required String subtitle,
    required String status,
    required String trailing,
    bool confirmed = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  imagePath,
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
              if (confirmed)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.5),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      trailing,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade800,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  status,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
