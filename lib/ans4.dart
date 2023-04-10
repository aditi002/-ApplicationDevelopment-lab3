// Write a dart program to create a class Camera with private properties [id, brand, color, prize]. 
//Create a getter and setter to get and set values. 
//Also, create 3 objects of it and print all details.
class Camera{
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id,this._brand,this._color,this._price);
  //getter
  int get id {
    return _id;
  }
  String get brand {
    return _brand;
  }
  String get color {
    return _color;
  }
  double get price {
    return _price;
  }
  //setter
  set id(int id){
     _id = id;
  }
  set brand(String brand){
    _brand =brand;
  }
    set color(String color){
    _color =color;
  }
    set price(double price){
    _price =price;
  }

  void printDetails(){
    print("id : $id, brand : $brand, color:$color, price: $price");
  }

}
void main(){
  Camera cam1 =Camera(301, "canon", "silver", 12400.34);
  Camera cam2 =Camera(302, "Nikon", "black", 232400.34);
  Camera cam3 =Camera(303, "Sony", "black-silver", 566700.34);

  print("Details of camera");
  cam1.printDetails();
  cam2.printDetails();
  cam3.printDetails();

}