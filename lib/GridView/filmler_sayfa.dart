import 'package:dart_lessons/GridView/filmler_detay_sayfa.dart';
import 'package:flutter/material.dart';

import 'filmler.dart';

class FilmlerSayfa extends StatefulWidget {
  const FilmlerSayfa({Key? key}) : super(key: key);

  @override
  State<FilmlerSayfa> createState() => _FilmlerSayfaState();
}

class _FilmlerSayfaState extends State<FilmlerSayfa> {

  Future<List<Filmler>> filmleriGetir() async{
    var filmlerListesi = <Filmler>[];

    var f1= Filmler(id: 1, ad: "Anadoluda", resimAd: "anadoluda.png",fiyat: 24.0);
    var f2= Filmler(id: 2, ad: "Django", resimAd: "django.png",fiyat: 18.0);
    var f3= Filmler(id: 3, ad: "Inception", resimAd: "inception.png",fiyat: 32.0);
    var f4= Filmler(id: 4, ad: "Interstellar", resimAd: "interstellar.png",fiyat: 21.0);
    var f5= Filmler(id: 5, ad: "The Hateful Eight", resimAd: "thehatefuleight.png",fiyat: 14.0);
    var f6= Filmler(id: 6, ad: "The Pianist", resimAd: "thepianist.png",fiyat: 19.0);

    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);

    return filmlerListesi;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filmler"),backgroundColor: Colors.deepPurple,),
      body: FutureBuilder<List<Filmler>>(
        future: filmleriGetir(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var filmlerListesi = snapshot.data;
            
            return GridView.builder(
              itemCount: filmlerListesi!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                childAspectRatio: 2/3.5,

              ),
              itemBuilder: (context,indeks){
                var film =filmlerListesi[indeks];

                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FilmlerDetaySayfa(film: film)));
                  },
                  child: Card(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/${film.resimAd}"),
                        ),
                        Text(film.ad,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("${film.fiyat}₺",style: const TextStyle(fontSize: 16,color: Colors.cyan),),

                      ],
                    ),
                  ),
                );
              },
            );
            
          }else{
            
            return const Center();
          }
        },
      ),
    );
  }
}
