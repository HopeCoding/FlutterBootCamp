import 'package:flutter/material.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({Key? key}) : super(key: key);

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  String txtData = "";

  var tfControl = TextEditingController();

  String image = "baklava.png";

  bool switchControl = false;

  bool checkboxControl = false;

  int radioValue = 0;

  bool progressControl = false;

  double ilerleme = 30.0;

  var tfClock = TextEditingController();

  var tfTime = TextEditingController();

  var countryList = <String>[];

  String secilenUlke = "Turkey";

  var tfAlert = TextEditingController();

  @override
  void initState() {
    super.initState();
    countryList.add("Turkey");
    countryList.add("ABD");
    countryList.add("England");
    countryList.add("France");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Kullanımı"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(txtData),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  controller: tfControl,
                  decoration: const InputDecoration(hintText: "Veri giriniz"),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      txtData = tfControl.text;
                    });
                  },
                  child: const Text("YAP")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          image = "kofte.png";
                        });
                      },
                      child: const Text("Mutlu")),
                  SizedBox(
                      width: 48,
                      height: 48,
                      child: Image.network(
                          "http://kasimadalan.pe.hu/yemekler/resimler/$image")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          image = "ayran.png";
                        });
                      },
                      child: const Text("Mutsuz")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: SwitchListTile(
                        title: const Text("Dart"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: switchControl,
                        onChanged: (veri) {
                          setState(() {
                            switchControl = veri;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 200,
                    child: CheckboxListTile(
                        title: const Text("Flutter"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: checkboxControl,
                        onChanged: (veri) {
                          setState(() {
                            checkboxControl = veri!;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                        title: const Text("Barcelona"),
                        value: 1,
                        groupValue: radioValue,
                        onChanged: (veri) {
                          setState(() {
                            radioValue = veri!;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                        title: const Text("Real Madrid"),
                        value: 2,
                        groupValue: radioValue,
                        onChanged: (veri) {
                          setState(() {
                            radioValue = veri!;
                          });
                        }),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          progressControl = true;
                        });
                      },
                      child: const Text("Başla")),
                  Visibility(
                      visible: progressControl,
                      child: const CircularProgressIndicator()),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          progressControl = false;
                        });
                      },
                      child: const Text("Dur")),
                ],
              ),
              Text(ilerleme.toInt().toString()),
              ElevatedButton(
                  onPressed: () {
                    print("Switch durum: $switchControl");
                    print("Checkbox durum: $checkboxControl");
                    print("RadioButton durum:$radioValue");
                    print("CircularProgress durum: $progressControl");
                    print("Slider durum: ${ilerleme.toInt()}");
                    print("Seçilen ülke: $secilenUlke");
                  },
                  child: const Text("Göster")),
              Slider(
                  min: 0.0,
                  max: 100.0,
                  value: ilerleme,
                  onChanged: (veri) {
                    setState(() {
                      ilerleme = veri;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 120,
                      child: TextField(
                        controller: tfClock,
                        decoration: const InputDecoration(hintText: "Saat"),
                      )),
                  IconButton(
                      onPressed: () {
                        showTimePicker(
                            context: context,
                            initialTime:
                            TimeOfDay.fromDateTime(DateTime.now()))
                            .then((value) {
                          tfClock.text = "${value!.hour} : ${value.minute}";
                        });
                      },
                      icon: const Icon(Icons.access_time)),
                  SizedBox(
                      width: 120,
                      child: TextField(
                        controller: tfTime,
                        decoration: const InputDecoration(hintText: "Saat"),
                      )),
                  IconButton(
                      onPressed: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2010),
                            lastDate: DateTime(2030))
                            .then((value) {
                          tfTime.text =
                          "${value!.day}/${value.month}/${value.year} ";
                        }); //then
                      },
                      icon: const Icon(Icons.date_range))
                ],
              ),
              DropdownButton(
                  value: secilenUlke,
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  style: const TextStyle(color: Colors.indigoAccent),
                  underline: Container(
                    height: 1,
                    color: Colors.red,
                  ),

                  items: countryList.map((ulke) {
                    return DropdownMenuItem(child: Text(ulke), value: ulke);
                  }).toList(),
                  onChanged: (veri) {
                    setState(() {
                      secilenUlke = veri!;
                    });
                  }),
              GestureDetector(
                onTap: () {
                  print("Tek tıklandı");
                },
                onDoubleTap: () {
                  print("Çift tıklandı");
                },
                onLongPress: () {
                  print("Uzun basıldı");
                },
                child: Container(width: 200, height: 50, color: Colors.red,),),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text("Silmek istiyor musunuz"),
                              action: SnackBarAction(
                                label: "Evet", onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text("Silindi")));
                              },),

                            ),
                          );
                        },
                        child: const Text("Snackbar")),
                    ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Colors.white,
                              content: const Text(
                                  "İnternet Bağlantısı yok !", style: TextStyle(
                                  color: Colors.red)),
                              action: SnackBarAction(
                                label: "TEKRAR DENE", onPressed: () {

                              },),

                            ),
                          );
                        },
                        child: const Text("Snackbar(Ö)")),
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: const Text("Download"),
                                  content: const Text("İçerik yüklensin mi ?"),
                                  actions: [
                                    TextButton(onPressed: (){
                                        Navigator.pop(context);
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(content: Text("İptal edildi.")));
                                    },
                                        child: const Text("İptal")),
                                    TextButton(onPressed: (){
                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text("Onaylandı.")));
                                    },
                                        child: const Text("Onayla")),
                                  ],
                                );
                              }
                          );
                        },
                        child: const Text("Alert")),
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Kayıt İşlemi"),
                                  content: TextField(controller: tfAlert,decoration: const InputDecoration(hintText: "Veri"),),
                                  actions: [
                                    TextButton(onPressed: (){
                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text("İptal edildi.")));
                                    },
                                        child: const Text("İptal",style: TextStyle(color: Colors.black))),
                                    TextButton(onPressed: (){
                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text("Alınan Veri: ${tfAlert.text} Kaydedildi.")));
                                    },
                                        child: const Text("Kaydet",style: TextStyle(color: Colors.black),)),
                                  ],
                                );
                              }
                          );
                        },
                        child: const Text("Alert(Ö)")),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
