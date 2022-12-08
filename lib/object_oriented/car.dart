class Cars {
   String name;
   String color;
   int speed;
   bool isWork;


   Cars({required this.name,required this.color,required this.speed,required this.isWork});



   void printInfo(){
      print("----------------------");
      print("${name} Color: ${color}");
      print("${name} Speed: ${speed}");
      print("${name} isWork: ${color}\n");
   }

   void start(){
      print("----------------------\n");
      print("$name çalıştı.\n");
      print("----------------------\n");
      isWork= true;
     speed=20;
   }

   void stop(){
      print("----------------------\n");
      print("$name durdu.\n");
      print("----------------------\n");
      isWork= false;
      speed=0;
   }
   void speedUp(int km){
      print("----------------------\n");
      print("$name hızlandı.\n");
      print("----------------------\n");
      speed+=km;
   }
   void slowDown(int km){
      print("----------------------\n");
      print("$name yavaşladı.\n");
      print("----------------------\n");
      speed-=km;
   }



// late : daha sonra değer atama yapıcam.
}
