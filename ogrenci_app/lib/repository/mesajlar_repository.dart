class MesajlarRepository{

  final List<Mesaj> mesajlar = [
    Mesaj('Merhaba', 'Ali', DateTime.now().subtract(const Duration(minutes: 3))),
    Mesaj('Orada mısın ?', 'Ali', DateTime.now().subtract(const Duration(minutes: 2))),
    Mesaj('Evet', 'Ayşe', DateTime.now().subtract(const Duration(minutes: 1))),
    Mesaj('Nasılsın ?', 'Ayşe', DateTime.now().subtract(const Duration(minutes: 1)))
  ];

  int yeniMesajSayisi = 4;

}

class Mesaj{
  String yazi;
  String gonderen;
  DateTime nezaman;

  Mesaj(this.yazi, this.gonderen, this.nezaman);
}