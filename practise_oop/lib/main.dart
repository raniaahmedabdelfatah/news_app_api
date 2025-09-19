class Human{
  String? name;
  int? _numofarmes;
  double? height;
  double? weight;
  String? hair_color;
  set numberofarmes(int num)
  {
    if (num<=2&&num>=0)
      this._numofarmes =num;
  }
  int? get numberofarmess {
    return this._numofarmes;
  }

}


void main(){
  Human Rania=Human();

  Rania.hair_color="black";
  Rania.height=170;
  Rania.weight=62;
  print(Rania.weight);
  Rania.numberofarmes=1;
  print(Rania.numberofarmess);

}