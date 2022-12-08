void main() {
  var studentName = "Arda";
  var studentAge = 18;
  var studentHeight = 1.70;
  var studentInitials = "A";
  var studentIsContinue = true;

  print(studentName);
  print(studentAge);
  print(studentHeight);
  print(studentInitials);
  print(studentIsContinue);

  int product_Id = 3000;
  String product_name = "Keyboard";
  int product_total = 100;
  double product_price = 899.99;
  String product_brand = "Logitech";

  print("product Id: $product_Id");
  print("product Name: $product_name");
  print("product Total: $product_total");
  print("product Price: $product_price ₺");
  print("product Brand: $product_brand");

  int a = 100;
  int b = 200;

  print("$a and $b addition : ${a + b}");

  //Sabitler(Constants)
  //final,const,val

  int number = 30;
  print(number);
  number = 100;
  print(number);

  //Kodlamayı çalıştırdığımızda hafızada oluşur.
  final int total = 100;
  //Değişkeni tanımladığımızda hafızada oluşur.
  //Görsel nesnelerde kullanılır.Button,text vb.
  const double pi = 3.14;

  // Type Conversion - Tip Dönüşümü

  // Digital to digital conversion

  int i = 27;
  double d = 97.62;

  int total1 = d.toInt();
  double total2 = i.toDouble();

  print(total1);
  print(total2);

  // Digital to Text conversion
  String s = i.toString();
  String s2 = d.toString();
  print(s);
  print(s2);

  //Text to Digitala conversion
  String text = "2022";
  String text2 = "15.31";

  int textconverted = int.parse(text);
  double text2converted =double.parse(text2);
  print(textconverted);
  print(text2converted);
  
}
