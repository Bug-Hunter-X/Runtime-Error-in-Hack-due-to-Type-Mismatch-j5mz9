function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  var x = 10;
  var y = baz(x);
  print("y = ", y);
}

// This code is valid Hack but will throw a runtime error if x is not an int
// as the functions expect an int as input and will fail to compile
// if the input is not an int

function unsafeFoo(x: int): int {
  return x + 1;
}

function unsafeBar(x: int): int {
  return unsafeFoo(x) * 2;
}

function unsafeBaz(x: int): int {
  return unsafeBar(x) - 1;
}

function unsafeMain(): void {
  var x: dynamic = 10;
  var y = unsafeBaz(x);
  print("y = ", y);
}
// This is a runtime error, because x is a dynamic type and can be anything.
// This function will throw an error if x is not an int.
