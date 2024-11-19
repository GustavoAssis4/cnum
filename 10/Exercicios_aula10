dp(f,x,h) = (f(x+h)-f(x))/h
dr(f,x,h) = (f(x)-f(x-h))/h
dc(f,x,h) = (f(x+h)-f(x-h))/(2*h)

# Exemplo 8.1.1
f(x) = sin(2*x) - (x^2)
r = dp(f, 2, 0.1)
println(r)

r = dp(f, 2, 0.01)
println(r)

r = dp(f, 2, 10^-12)
println(r)

r = dc(f, 2, 10^-12)
println(r)
