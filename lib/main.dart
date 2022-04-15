import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Glowa(),
  ));
}

class Glowa extends StatelessWidget {
  const Glowa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(child: Text('Podróże')),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(primary: Colors.white),
          label: const Text(
            'No to w drogę!',
            style: TextStyle(color: Colors.black),
          ),
          icon: const Icon(
            Icons.card_travel,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WybieranieAuta()),
            );
          },
        ),
      ),
    );
  }
}

class WybieranieAuta extends StatelessWidget {
  WybieranieAuta({Key? key}) : super(key: key);

  var auta = [
    'Audi A4',
    'BMW X5',
    'Mercedes C-Class',
    'Opel Astra',
    'Porsche Cayenne',
    'Skoda Octavia',
    'Volkswagen Golf',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('1.Wybierz auto!'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: auta.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(auta[index],
                  style: const TextStyle(color: Colors.white)),
              onTap: () {
                if (auta[index] == 'Audi A4') {
                  auta.remove("Audi A4");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WybieranieHotelu()),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }

  void setState(Null Function() param0, bool remove) {}
}

class WybieranieHotelu extends StatelessWidget {
  var Hotele = [
    "Hotel Hilton",
    "Hotel Mariott",
    "Hotel Mazurkas",
    "Hotel Radisson",
    "Hotel Splendor",
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('2.Wybierz hotel!'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Hotele.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(Hotele[index],
                    style: const TextStyle(color: Colors.white)),
                onTap: () {
                  null;
                });
          },
        ),
      ),
    );
  }
}
