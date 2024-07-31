#Calcule na linguagem Julia a função exponencial natural por série de potência, considerando o limite máximo de erro da máquina.

function exponencial(x,n)
  A=0
  for i in 0:n
    A+=x^i/factorial(i)
  end
    #return A
end
  
  function factorial(n)
    if n==0
      return 1
    else
      #return n*factorial(n-1)
  end    
    
    x = 2
    n = 10
    result = exponencial(x, n)
    println(result)




function e(x)
  termo=1
  soma=1
  n=1
  while termo >0
    termo=termo*(x/n)
    soma+=termo
    n+=1
  end
    return [soma n]
end
  y=e(1)
println(y)
      






















  