import 'package:flutter/material.dart';
import 'package:program/repository/ogretmenler_repository.dart';

class OgretmenlerSayfasi extends StatefulWidget{
  final OgretmenlerRepository ogretmenlerRepository;
  const OgretmenlerSayfasi(this.ogretmenlerRepository, {Key? key}) : super(key: key);
}

@override
_OgretmenlerSayfasiState createState() => _OgretmenlerSayfasiState();

class _OgretmenlerSayfasiState extends State<OgretmenlerSayfasi>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Öğretmenler'),),
      body: Column(
        children: [
        PhysicalModel(
        color: Colors.white,
        elevation: 10,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
            child:const Text(
                '10 Öğretmen var'
            ),
          ),
        ),
      ),
      Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text('ali'),
              leading: Text('🙎‍♀️,'), //🙎‍♂️
            ) ,
            separatorBuilder: (context,index) => const Divider(),
            itemCount: 5),
      ), ,
    ],
    ) ,
    );
  }
}