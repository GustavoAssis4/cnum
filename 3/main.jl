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
error = 10^-5
r=bisection(0.4,0.5,f,error)
println(r)

f(x)= 5*sin(x^2) - exp(x/10)
error = 10^-5
r=bisection(1.7,1.8,f,error)
println(r)

f(x)= 5*sin(x^2) - exp(x/10)
error = 10^-5
r=bisection(2.5,2.6,f,error)
println(r)

#exercicio 3.2.8
function correnteDiodo(vt,vd,ir)
id = ir(exp(vd/vt)-1)
  



return id