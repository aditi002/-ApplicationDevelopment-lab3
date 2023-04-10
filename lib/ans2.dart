//Write a dart program to create a class House with properties [id, name, prize]. 
//Create a constructor of it and create 3 objects of it. 
//Add them to the list and print all the details.


class House{
  int id;
  String name;
  double price;
  
  House(this.id, this.name, this.price);

  @override
  String housedetails(){
    return 'House ID: $id , Name of house: $name, Price of house: $price';
  }
    
  

}
void main(){
  House house=House(101, "Medium house", 1220000.45);
  House house1=House(102, "Small house", 1110300.45);
  House house2=House(103, "Big house", 26819100.45);

  List<House> listofHouse = [house, house1, house2];

  print("DETAILS OF HOUSES");
  for(var house in listofHouse){
    print(house.housedetails());
  }
}