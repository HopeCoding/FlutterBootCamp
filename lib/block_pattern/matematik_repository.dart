class MatematikRepository {

  int topla(String say1,String say2){
    int s1 = int.parse(say1);
    int s2 = int.parse(say2);
    int sonuc = s1 + s2;

    return sonuc;

  }

  int carp(String say1,String say2){
    int s1 = int.parse(say1);
    int s2 = int.parse(say2);

    int sonuc = s1 * s2 ;

    return sonuc;


  }


}