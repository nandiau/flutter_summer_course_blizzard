class Sprite {
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  int size = 100;
  int direction = 90;
  bool show = true;

  Sprite(String name){
    name = name;
  }
  String getName(){
    return this.name;



  }

  void say (String name){
    print('Hello My name is $name');
  }
  void move(int x) {
    this.x = x;
    print('I moved ${this.x}');

  }
}
void main(){
final Dae = Sprite('Dae');
Dae.say('Dae');
Dae.move(10);
print(Dae.getName());
final Chick = Sprite('Chick');
Chick.say('Chick');
Chick.move(100);
print(Chick.getName());
final Ruby = Sprite('Ruby');
Ruby.say('Ruby');
Ruby.move(200);
print(Ruby.getName());
}
