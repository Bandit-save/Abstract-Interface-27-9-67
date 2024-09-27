//interface modifier
abstract class Building{
  void drafBlueprint();
  void interior();
  void construct();
}
 class House implements Building{
 @override
 void construct(){
  print('House: construct');
 }

 @override
 void drafBlueprint(){
  print('House: drafBlueprint');
 }

 @override
 void interior(){
  print('House: interior');
 }
}

void main(List<String> args) {
  var myhouse = House();
  myhouse.drafBlueprint();
  myhouse.construct();
  myhouse.interior();
}