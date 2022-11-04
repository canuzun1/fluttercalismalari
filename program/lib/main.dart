import 'package:flutter/material.dart';
import 'package:program/repository/mesajlar_repository.dart';
import 'package:program/repository/ogrenciler_repository.dart';
import 'package:program/repository/ogretmenler_repository.dart';


void main() {
  runApp(const OgrenciApp());
}

class OgrenciApp extends StatelessWidget {
  const OgrenciApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'öğrenci uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnaSayfa(title: 'Öğrenci Ana Sayfası'),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  MesajlarRepository mesajlarRepository = MesajlarRepository();
  OgrencilerRepository ogrencilerRepository = OgrencilerRepository();
  OgretmenlerRepository ogretmenlerRepository = OgretmenlerRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: Text('${mesajlarRepository.mesajlar.length} yeni mesajınız var'),
              onPressed: () {
                _mesajlaraGit(context);
              },
            ),
            TextButton(
              child: Text('${ogrencilerRepository.ogrenciler.length} ogrenci'),
              onPressed: () {
                _ogrencilereGit(context);
              },
            ),
            TextButton(
              child: Text('${ogretmenlerRepository.ogretmenler
                  .length} yeni mesajınız var'),
              onPressed: () {
                _ogretmenlereGit(context);
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Öğrenci Adı'),
            ),
            ListTile(
              title: const Text('Öğrenciler'),
              onTap: () {
                _ogrencilereGit(context);
              },
            ),
            ListTile(
              title: const Text('Öğrtmenler'),
              onTap: () {
                _ogretmenlereGit(context);
              },
            ),
            ListTile(
              title: const Text('Mesajalr'),
              onTap: () {
                _mesajlaraGit(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
void _ogrencilereGit(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      var ogrencilerRepository;
      return OgrencilerSayfasi(ogrencilerRepository);
    }));
  }
void _ogretmenlereGit(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return OgretmenlerSayfasi(ogretmenlerRepository);
  }));
}
void _mesajlaraGit(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return MesajlarSayfasi();
  }));
}

