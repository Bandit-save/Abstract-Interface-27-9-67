abstract class Shape {
  int dim1;
  int dim2;

  //contstructor
  Shape(this.dim1,this.dim2);
  //abstract methood
  void area();
}
class Rectangle extends Shape{
  Rectangle(super.dim1,super.dim2); //contstructor
  /*Rectangle([int dim1=0, int dim2=0]){
    super.dim1 = dim1;
    super.dim2 = dim2;
  }*/
  void area(){
    int sum = dim1 * dim2;
    print('The area of the Rectangle is $sum');
  }
}
class Triangle extends Shape{
  Triangle(super.dim1,super.dim2); //contstructor
  void area(){
    double sum = 1/2 * dim1 * dim2;
     print('The area of the Triangle is $sum');
  }
}
void main(List<String> args) {
  var Rec = Rectangle(20, 10);
  var Tri = Triangle(20, 10);
  Rec.area();
  Tri.area();
}