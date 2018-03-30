String qformula = "2x² + 15x + 7 = 0";
println("Formula: " + qformula);

String[] splitted = splitTokens(qformula, " x²"); 


if(splitted[splitted.length].equals("0")){
  println("Formula is valid, these are the parts");
  printArray(splitted);
  splitted.shorten();
}else{
  println("Formula is invalid, make sure there is 0 on the right");
}

  