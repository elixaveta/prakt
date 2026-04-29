//1
class Kru {
  int coffee = 100;

  void pit() {
    if (10 <= coffee) {
      coffee -= 10;
      print("осталось $coffee мл");
    } else {
      print("кружка пуста");
    }
  }
}

class Pers {
  String name;

  Pers(this.name);

  void KruPers(Kru kru) {
    print('$name пьёт');
    kru.pit();
  }
}

void main(){
    Pers person = Pers("Иван");
    Kru myKru = Kru(); 
    person.KruPers(myKru);
    person.KruPers(myKru);
    person.KruPers(myKru);
  }


  //2
  class Shkaf{
    List<String> vesi=[];

    void klast(String vesis){
      vesi.add(vesis);
      print('$vesis положили в шкаф');
    }

     void vzat(String vesis) {
    if (vesi.contains(vesis)) { // есть ли вещь
      vesi.remove(vesis); // удаляем её
      print('$vesis взяли из шкафа');
    } 
    else {
      print('$vesis нет в шкафу');
    }
}
  }

  class Person{
    String name;

    Person(this.name);

    void vzatShkaf(Shkaf shkaf, String vesi) {
    print('$name взяла вещь');
    shkaf.vzat(vesi);
    }

    void klastShkaf(Shkaf shkaf, String vesi) {
    print('$name кладёт вещь');
    shkaf.klast(vesi);
    }
  }


  void main(){
    Shkaf shkaf=Shkaf();

    Person pers=Person("Вика");

    pers.klastShkaf(shkaf, "свитер");
    pers.klastShkaf(shkaf, "кофта");

    pers.vzatShkaf(shkaf, "кофта");
    print("${pers.name} взяла вещь. в шкафу: $shkaf");
  }

  //3
//4
