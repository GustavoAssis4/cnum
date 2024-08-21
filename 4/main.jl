
using .MathConstants:e

function fixedpoint(a, g, error)
  x = g(a)
  while abs(x-a) > error
    a = x
    x = g(a)
  end
  return x
end

g(x) = e^x-2
error = 10^-8
r = fixedpoint(1.1, g, error)
println(r)

  # Exercicio 3.3.1

g(x) = e^x-2

function secant(a, b, f, error)
  g(a, b) = (a*f(b)-b*f(a))/(f(b)-f(a))
  x = g(a, b)
  while abs(x-b) > error
    a = b
    b = x
    x = g(a, b)
  end
  return x
end

# Exercicio 3.4.1

function newton(x0, f, df, error)
  x = x0
  while abs(f(x)) > error
    x = x - f(x)/df(x)
  end
    return x
end

f(x) = cos(x) - x^2
df(x) = -sin(x) - 2*x

dd=newton(1.1, f, df, 10^-8)
println(dd)

# Exercicio 3.6.3
f(x) = e^(-(x^2))-(2*x)
r = secant(0.4, 0.5, f, error)
println(r)

# Exercicio 3.6.4
Ir = 10^-12
T = 300
k = 1.380649*(10^-23)
q = 1.60217663*(10^-19)
I(x) = Ir*(e^((x*q)/(k*T)) - 1)
dI(x) = ((Ir*q)/(k*T))*e^((x*q)/(k*T))
g(x,V,R) = R*I(x) + x - V
dg(x,R) = R*dI(x) + 1
d(x,R,f) = x - (f(x)/dg(x,R)) 
error = 10^-3

f(x) = g(x, 30, 10^3)
h(x) = d(x, 10^3, f)
r=fixedpoint(0.7,h,error)
println(r)
r=secant(0.6,0.7,h,error)
println(r)
    
    
    