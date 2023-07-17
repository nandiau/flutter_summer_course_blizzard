class Sprite {
  int x = 0;
  int y = 0;

  void makeNoise() {
    print('My Position is ${this.x} and ${this.y}');
  }

  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

class Shape {
  int length = 0;
  int height = 0;
  Shape({required int length, required int height}) {
    this.length = length;
    this.height = height;
  }
  void showPosition() {
    print('My size is length = ${this.length} and height = ${this.height}');
  }
}

void main() {
  final Drum = Sprite(10, 10);
  Drum.makeNoise();
  final shape = Shape(length: 10, height: 20);
  shape.showPosition();
  final animal = Animal(name: 'Tom Cat', type: 'Cat');
  animal.makeNoise();
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
