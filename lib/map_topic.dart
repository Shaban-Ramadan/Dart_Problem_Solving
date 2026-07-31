
/// the map declaration types in dart :
// 1-  Creation  Literal type witch than greater use in dart .
var gifts ={
  'first':'selver ring',
  'second':'',
  'third':'dress ',
};
Map<String, String> gifts2={
  'first':'',
  'second':'two',
  'third':'',
  'forth':'',
};
//=================================================
// 2- by Constructor use .
var map3=Map();
var map4=Map<String,int>();
var map5 = <String, String>{};
//=================================================
//3-const map
const fruits = {
  'apple': 'red',
  'banana': 'yellow',
};
void main(){
  /// the access to amp members:
  print(" the first value  :${gifts['first']}");
  print(" the second value  :${gifts['second']}");
  /// add or update map members :
  gifts['second']= 'selver ring'; //added value
  gifts['first']= 'golden ring';//updated value
  print(" the second value after added :${gifts['second']}");
  print(" the first value after update :${gifts['first']}");
  // delete element
  gifts.remove('second');
  print(" the second value after delete :${gifts['second']}");
  // check if the map contain value ?
  print(gifts.containsKey('first'));   // bool
  print(gifts.containsValue('partridge'));//bool
  /// methods in map :
  // add if not founded.
 gifts.putIfAbsent('forth', ()=>'diamond ring');
 gifts.putIfAbsent('fifth', ()=>'metal ring');
 // update
  gifts.update('first', (oldValue) => 'metal ring');
  gifts.update('fifth', (oldValue) => 'golden ring');
  print(gifts);
  /// iteration 
  print('===== printed by forEch ==========');
  gifts.forEach((key, value) {
    print('$key is $value');
  });
//  entries
  print('===== printed by entries ==========');
  for (var entry in gifts.entries) {
    print('${entry.key} → ${entry.value}');
  }
  print('===== printed by keys ==========');
//  keys
  for (var key in gifts.keys) {
    print(key);
  }
}
//========= testing example ==========
//  the first value  :selver ring
//  the second value  :
//  the second value after added :selver ring
//  the first value after update :golden ring
//  the second value after delete :null
// true
// false
// {first: metal ring, third: dress , forth: diamond ring, fifth: golden ring}

