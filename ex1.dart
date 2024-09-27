abstract class Plane {
  //Abstract method ไม่สมบูร
  void fly();
  void moveForward(int meter);

  void takeOff() {
    //รูปเต็ม สมบูรณ์
    print('Plane: takeOff()');
  }

  landing() => print('Plane: Landing'); //รูปย่อสมบูร
}

class Boeing extends Plane{
  @override
  void fly(){
    print('Boeing: fly()');
  }
  @override
  void moveForward (int meters) {
    print('Boeing: moveForward() $meters Meters');
  }
}
void main(List<String> args) {
  var boeing = Boeing();
  boeing.takeOff();
  boeing.landing();
  boeing.fly();
  boeing.moveForward(150);
  
}