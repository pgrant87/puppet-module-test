class redwoodtest (
  String             $envtestvar,
){

$test = lookup('envtestvar')
notify{"The value is: $test": }

notify{"The value is: ${envtestvar}": }


}
