# Print first 5 natural numbers

j=1
while(j<=5){print(j);j=j+1}

# Print square root first 5 natural numbers

j=1
while(j<=5){print(sqrt(j));j=j+1}

# Print square root of first n natural numbers

j=1
n=10
while(j<=n){print(sqrt(j));j=j+1}

# Print square root of elements of vector x=(24,26,27,28,29,30)

x=c(24,26,27,28,29,30)
i=1
while(i<=length(x)){print(sqrt(x[i]));i=i+1}

# Print square of elements of vector x=(24,26,27,28,29,30) for every odd element.

x=c(24,26,27,28,29,30)
i=1
while(i<=length(x)){
  if (i%%2==1){
    print(sqrt(x[i]))
  }
  i=i+1
}

# OR

x=c(24,26,27,28,29,30)
i=1
while(i<=length(x)){print(sqrt(x[i]));i=i+2}


# Print square of elements of vector x=(24,26,27,28,29,30) for every odd element using next.

x=c(24,26,27,28,29,30)
j=0
while(j<length(x)){
  j=j+1
  if (j%%2==0){next}
  print(j)
  print(x[j]^2)
}

# Print square till the square is less than 800

j=0
while(j<=length(x)){
  j=j+1
  if (x[j]^2>800){break}
  print(x[j]^2)
}

