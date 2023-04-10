//Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.
class Laptop{
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void details(){
    print('Id:$id');
    print('Name of Laptop:$name');
    print('RAM: $ram');

  }

}
void main(){
  Laptop laptop1= Laptop(1, "Acer", 16);
  Laptop laptop2 = Laptop(2, "HP", 32);
  Laptop laptop3 = Laptop(3, "Lenevo", 8);

  print('laptop1');
  laptop1.details();

  print('laptop2');
  laptop2.details();
  
  print('laptop3');
  laptop3.details();


}