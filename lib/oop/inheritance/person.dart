class Person{
  String name;
  String address;
  Person(this.name, this.address);
  @override
  toString(){
    return 'name = $name, address = $address';
  }


}