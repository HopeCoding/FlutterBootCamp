void main(){
  for(var i=1;i<4;i++){
    print("Döngü 1: $i");
  }
  print("\n");

  for(var x=10;x<22;x+=5){
    print("Döngü 2: $x");
  }

  print("\n");

  for(var y=20;y>9;y-=5){
    print("Döngü 3: $y");
  }

  print("\n");


  var sayac=1;

  while(sayac<4){
    print("Döngü 4 : $sayac");
    sayac++;
  }

  print("\n");


  //1,2,3,4,5
  for(var i=1;i<6;i++){
    if(i==3){
      break;
    }
    print("Döngü 5: $i");
  }

  print("\n");


  for(var i=1;i<6;i++){
    if(i==3){
      continue;
    }
    print("Döngü 6: $i");
  }

}