class Shape {
  int size = 0;
  int length = 0;
  int height = 0;
  Shape({required int size, required int length, required int height}) {
    this.size = size;
    this.length = length;
    this.height = height;
  }
  void showInfo() {
    print("I'm a shape");
  }
}

class Rectangle extends Shape {
  Rectangle(
      {required super.size, required super.length, required super.height});

  @override
  void showInfo() {
    print("I'm a rectangle");
  }
}

void main() {
  final shape = Shape(size: 3, length: 10, height: 30);
  final rectangle = Rectangle(size: 3, length: 20, height: 40);
  rectangle.showInfo();
  final pig = Pig(name: 'Pig', type: 'Pig');
  pig.makeNoise();
  final cat = Cat(name:'Cat',type: 'Cat');
  cat.makeNoise();
  final horse = Horse(name:'Horse', type: 'Horse');
  horse.makeNoise();
}

class Animal {
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
  String name = 'Animal';
  String type = 'Animal';
  void makeNoise() {
    print('Animal is Roaring');
  }
}

class Pig extends Animal {
  Pig({required super.name, required super.type});

  @override
  void makeNoise() {
    print('Pig roarrr');
  }
}

class Cat extends Animal {
  Cat({required super.name, required super.type});
  @override
  void makeNoise() {
    print('Meawww');
  }
}



class Horse extends Animal {
  Horse({required super.name, required super.type});

  @override
  void makeNoise() {
    print('Iinhoo');
  }
}
