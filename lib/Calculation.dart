import 'dart:math';

class Calculation {

final double age ;
final double weight;
final double height;



Calculation({required this.age,required this.weight,required this.height});


double getResultNumber (){
  var result = weight / pow(height/100, 2);
  print(result);
  return result;


}
String getResultMessage (){
  var result = weight / pow(height/100, 2);
  if (result <= 18.5){
    return "Underweight";
  }
  else if ( 18.5 <= result && result <= 24.9){
    return "Normal weight";
  }
  else if (25 <= result && result <= 29.9){
    return "Overweight";
  }
  else if (result >= 30){
    return "Obesity";
  }
  else
    return "nothing";
}

String getAdviceMessage (){
  var result = weight / pow(height/100, 2);
  if (result <= 18.5){
    return "Choose nutrient-rich foods";
  }
  else if ( 18.5 <= result && result <= 24.9){
    return "Keep it up";
  }
  else if (25 <= result && result <= 29.9){
    return "Eat plenty of dietary fiber";
  }
  else if (result >= 30){
    return "Eat high fibre foods";
  }
  else
    return "nothing";
}



}

// underweight: Choose nutrient-rich foods
// overweight: Eat plenty of dietary fiber
// obesity: Eat high fibre foods


