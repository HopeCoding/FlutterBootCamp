import 'package:flutter/material.dart';
import 'bolum.dart';
import 'colors.dart';
import 'my_chip.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var screenInformation = MediaQuery.of(context);
    final double screenHeight = screenInformation.size.height;
    final double screenWidth  = screenInformation.size.width;
    print("Ekran Yüksekliği : $screenHeight");
    print("Ekran Genişliği : $screenWidth");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza", style: TextStyle(fontFamily: "RubikVinyl"),),
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Beef Cheese ", style: TextStyle(
              fontSize: screenWidth/12, color: mainColor, fontWeight: FontWeight.bold)),
          Image.asset("images/pizza_resim.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyChip(icerik: "Cheese"),
              MyChip(icerik: "Sausage"),
              MyChip(icerik: "Olive"),
              MyChip(icerik: "Pepper"),
            ],
          ),
          Bolum(txt1: "20 min",
              txt2: "Delivery",
              txt3: "Meat lover, get ready to meet your pizza"),
          Padding(
            padding:  EdgeInsets.only(left: screenWidth/41, right: screenWidth/41),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly aralarında boşluk oluşturma.
              children: [
                Text("\$ 5.98", style: TextStyle(fontSize: 44,
                    color: mainColor,
                    fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(width: screenWidth/2, height: screenHeight/16,
                  child: TextButton(onPressed: () {},
                    child: Text("ADD TO CART",
                      style: TextStyle(color: txtColor1, fontSize: 18),),
                    style: TextButton.styleFrom(backgroundColor: mainColor),

                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


/*
children: [
          Text("Beef Cheese",style: TextStyle(fontSize: 30,color: mainColor,fontWeight: FontWeight.bold)),
          Image.asset("images/pizza_resim.png"),
          Row(
            children: [
              TextButton(onPressed: (){},child: Text("Cheese",style: TextStyle(color: textColor1),),),
            ],
          ),
        ],

 */