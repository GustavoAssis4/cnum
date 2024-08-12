#using MathConstants:e

function bisection(a,b,f,error)
  x = (a+b)/2
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x = (a+b)/2
  end
  return x
end

# Exercicio 3.2.1
f(x) = sqrt(x) - cos(x)
error = 10^-4
r = bisection(0,1,f,error)
println(r)

# Exercicio 3.2.2
f(x)= 5*sin(x^2) - exp(x/10)
error = 10^-5
r = bisection(0,1,f,error)
println(r)

f(x)= 5*sin(x^2) - exp(x/10)

r=bisection(0.4,0.5,f,error)
println(r)

f(x)= 5*sin(x^2) - exp(x/10)
r=bisection(1.7,1.8,f,error)
println(r)

f(x)= 5*sin(x^2) - exp(x/10)
r=bisection(2.5,2.6,f,error)
println(r)

#exercicio 3.2.8
  Ir=10^-12
  T=300
  k=1.38*10^-23
  q=1.602*10^-19
  I(x)=Ir*(exp((x*q)/(k*T))-1)
  g(x,V,R)=R*I(x)+x-V
  error=10^-3
  #a)
  f(x)=g(x,30,10^3)
  r=bisection(0.3,0.9,f,error)
  println(r)
  #b)
  f(x)=g(x,3,10^3)
  r=bisection(0.3,0.9,f,error)
  println(r)
  #c)
  f(x)=g(x,3,10^4)
  r=bisection(0.3,0.9,f,error)
  println(r)
  #d)
  f(x)=g(x,300*(10^-3),10^3)
  r=bisection(0.2,0.9,f,error)
  println(r)
  #e)
  f(x)=g(x,-300*(10^-3),10^3)
  r=bisection(-0.4,0.9,f,error)
  println(r)
  #f)
  f(x)=g(x,-30,10^3)
  r=bisection(-40,90,f,error)
  println(r)
  #g)
  f(x)=g(x,-30,10^4)
  r=bisection(-40,20,f,error)
  println(r)



