//interface
abstract class Game{

  int? level;

  void start();
  void pause();
  void toContine();
  void stop();
  void play();
  
}
abstract class Player{
  String? name;

  int selectGame();
  bool isPlayer();
}

abstract class TictacToAbst implements Game,Player{
  start()=> print('TictacToAbst: start()');
  pause()=> print('TictacToAbst: pause()');
  play()=> print('TictacToAbst: play()');
}
class Tictacto extends TictacToAbst{
  int? level;
  String? name;
  Tictacto(this.level,this.name);
  stop()=> print('TictacToAbst: stop()');
  toContine()=> print('TictacToAbst: toContine()');
  int selectGame()=> 2;
  bool isPlayer()=>true;
}
void main(List<String> args) {
  var tacToe = Tictacto(5,'tiktok');
  tacToe.start();
  tacToe.play();
  tacToe.pause();
  tacToe.stop();
  print('Tactoe = ${tacToe.level}');
  print('select Game is ${tacToe.selectGame()}');
  print('Tacte is ${tacToe.name}');
  
}