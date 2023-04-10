//Write a dart program to create a class Animal with properties [id, name, color].
// Create another class called Cat and extends it from Animal. 
//Add new properties sound in String. Create an object of a Cat and print all details.
class Animal{
  int id;
  String name;
  String color;
  

  Animal(this.id, this.name, this.color);

  void details(){
    print('id:$id, name of cat:$name,colour of cat:$color');
  }

}

class Cat extends Animal{
  String sound;
  Cat(int id, String name, String color,this.sound): super(id,name,color);

  @override
  void details(){
    print('id: $id , name of cat: $name , colour of cat: $color , sound of cat: $sound');
  }
  
}

void main(){
  Cat cat1 = Cat( 201, "biralo", "balck", "meow");

  print('Cat details');
  cat1.details();

}