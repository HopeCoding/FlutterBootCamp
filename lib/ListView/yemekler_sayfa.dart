import 'package:dart_lessons/ListView/yemekler.dart';
import 'package:dart_lessons/ListView/yemekler_detay_sayfa.dart';
import 'package:flutter/material.dart';

class YemeklerSayfa extends StatefulWidget {
  const YemeklerSayfa({Key? key}) : super(key: key);

  @override
  State<YemeklerSayfa> createState() => _YemeklerSayfaState();
}

class _YemeklerSayfaState extends State<YemeklerSayfa> {


  Future<List<Yemekler>> yemekleriGetir() async{
    var yemeklerListesi = <Yemekler>[];
    
    var y1 = Yemekler(id: 1, ad: "Köfte", resimAd: "kofte.png", fiyat: 50.0);
    var y2 = Yemekler(id: 2, ad: "Ayran", resimAd: "ayran.png", fiyat: 10.0);
    var y3 = Yemekler(id: 3, ad: "Fanta", resimAd: "fanta.png", fiyat: 12.0);
    var y4 = Yemekler(id: 4, ad: "Makarna", resimAd: "makarna.png", fiyat: 48.0);
    var y5 = Yemekler(id: 5, ad: "Kadayıf", resimAd: "kadayif.png", fiyat: 35.0);
    var y6 = Yemekler(id: 6, ad: "Baklava", resimAd: "baklava.png", fiyat: 60.0);
    
    yemeklerListesi.add(y1);
    yemeklerListesi.add(y2);
    yemeklerListesi.add(y3);
    yemeklerListesi.add(y4);
    yemeklerListesi.add(y5);
    yemeklerListesi.add(y6);


    return yemeklerListesi;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yemekler"),backgroundColor: Colors.orange,),
      body: FutureBuilder<List<Yemekler>>(
        future: yemekleriGetir(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var yemeklerListesi = snapshot.data;
            return ListView.builder(
              itemCount: yemeklerListesi!.length,
              itemBuilder: (context,indeks){
                var yemek = yemeklerListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => YemeklerDetaySayfa(yemek: yemek)));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(width: 150,height: 150,
                            child: Image.asset("images/${yemek.resimAd}"),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(yemek.ad,style: TextStyle(fontSize: 20),),
                            const SizedBox(height: 10,),
                            Text("${yemek.fiyat}₺",style: TextStyle(fontSize: 20,color: Colors.blue),),

                          ],
                        ),
                        Spacer(),
                        const Icon(Icons.keyboard_arrow_right),
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
