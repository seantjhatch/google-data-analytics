# Conditional Statements

# if
x <- 4
if(x > 0) {
    print("x is a positive number")
}

# else
x <- 7
if(x > 0) {
  print("x is a postive number")
} else {
  print("x is either a negative number or zero")
}

x <- -7
if(x>0) {
  print("x is a postive number")
} else {
  print("x is either a negative number or zero")
}
  
# else if
x <- 0
if (x > 0) {
  print("x is a postive number")
  } else if (x == 0) {
  print("x is zero")
  } else {
  print("x is a negative number")
}
