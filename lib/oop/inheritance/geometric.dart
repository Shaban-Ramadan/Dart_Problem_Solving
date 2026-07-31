class GeometricObject{
  String color ='white';
  bool filled =false;
  GeometricObject.geometric();
  GeometricObject( this.color,  this.filled);
  @override
  toString(){
   return 'color =$color filled=$filled';
  }
  
}