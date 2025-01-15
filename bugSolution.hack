//This code uses type hints to avoid runtime errors
function safeFoo(x: int): int {
  return x + 1;
}

function safeBar(x: int): int {
  return safeFoo(x) * 2;
}

function safeBaz(x: int): int {
  return safeBar(x) - 1;
}

function safeMain(): void {
  var x: int = 10;
  var y = safeBaz(x);
  print("y = ", y);
}

//Another way to prevent this error is to add a check at the beginning
//to make sure that the input is of the correct type
function saferFoo(x: mixed): int {
  if(typeof(x) != typeof(1)) {
    throw new Exception("x must be an integer");
  }
  return x + 1;
}

function saferBar(x: mixed): int {
  return saferFoo(x) * 2;
}

function saferBaz(x: mixed): int {
  return saferBar(x) - 1;
}

function saferMain(): void {
  var x: mixed = 10;
  var y = saferBaz(x);
  print("y = ", y);
}
