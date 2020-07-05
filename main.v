import os

fn main() {
  println('Hello World!')
  a, b := add(100, 50)
  println(a + b)
  println('-------------------------------------')
  array_fn()
  println('-------------------------------------')
  object_fn()
  println('-------------------------------------')
  import_os()
  println('-------------------------------------')
  if_for_fn()
}

fn add(x int, y int) (int, int) {
  return x + y, 1
}

fn array_fn() {
  // number only
  mut nums := [1, 2, 3]
  nums << 4
  nums << [5, 6]
  println(nums)
  println(1 in nums) // true
  println(nums.filter(it % 2 == 0)) // it
  println(nums.map(it + 1))
}

fn object_fn() {
  numbers := {
    'one': 1,
    'two': 2
  }
  println(numbers)

  mut n := map[string]int
  n['one'] = 1
  n['two'] = 2
  println(n)
}

fn import_os() {
  println('↓')
  name := os.get_line()
  println('input, $name')
}

fn if_for_fn() {
  if 2 < 1 {
    println('if')
  } else if 2 > 1 {
    println('else if')
  } else {
    println('else')
  }
  
  mut n := ''
  n = if 1 < 2 {
    'if'
  } else {
    'else'
  }
  println(n)
  
  numbers := [1, 2, 3, 4, 5]
  for i, num in numbers{ // for num in numbers{} // for{} // for i := 0; i < 10; i++
    println('$i -> $num')
  }


}

