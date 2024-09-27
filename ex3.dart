abstract class ElectricApliance{
  void on();
  void off();
  void work();

}
abstract class Fan1 extends ElectricApliance{
  void on(){
   print('Fan1: On()');
  }
  void off(){
   print('Fan1: OFF()');
  }
}
class Fan2 extends Fan1{
  @override
  void work(){
    print('Fan2: work()');
  }
}
void main(List<String> args) {
  useElectric(Fan2());
  var toshiba = Fan2();
  useElectric(toshiba);
}
void useElectric(ElectricApliance elec){
  elec.on();
  elec.work();
  elec.off();
}