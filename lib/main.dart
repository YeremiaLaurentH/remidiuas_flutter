import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: listNamaMahasiswa.length,
            itemBuilder: (context, index) {
              return ListTile(
                tileColor:
                    index == 5 ? Color.fromARGB(255, 7, 77, 198) : Colors.grey,
                title: Text(
                  listNamaMahasiswa[index].nama,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                subtitle: Text(
                  listNamaMahasiswa[index].nim,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
              );
            }),
      ),
    );
  }
}

class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({required this.nama, required this.nim});
}

List<Mahasiswa> listNamaMahasiswa = [
  Mahasiswa(nama: 'RANI NUR AMALIA', nim: 'STI202102572'),
  Mahasiswa(nama: 'ESTHER OKTAVIA HOTOROE', nim: 'STI202102574'),
  Mahasiswa(nama: 'DIMAS FEBRI MAULANA ISHAQ', nim: 'STI202102575'),
  Mahasiswa(nama: 'IMAM SAEFULLOH', nim: 'STI202102577'),
  Mahasiswa(nama: 'AKHYINA MUAZI', nim: 'STI202102578'),
  Mahasiswa(nama: 'YEREMIA LAURENT H', nim: 'STI202102579'),
  Mahasiswa(nama: 'LOUIS ELUA ARKANANTA', nim: 'STI202102584'),
  Mahasiswa(nama: 'FIDELIS GULO', nim: 'STI202102586'),
  Mahasiswa(nama: 'MUHAMMAD ARDIANSYAH SAPUTRA', nim: 'STI202102591'),
  Mahasiswa(nama: 'BUANG APIPUDIN', nim: 'STI202102597'),
  Mahasiswa(nama: 'MOHAMMAD FAIZ', nim: 'STI202102601'),
];
