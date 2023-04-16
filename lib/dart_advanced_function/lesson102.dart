typedef Great = String Function(String);

sayNamaste(String name) => 'namster $name';

void main(){
  welcome(sayNamaste,'pratik');
}
void welcome(Great great,String name){
  print(great(name));
}