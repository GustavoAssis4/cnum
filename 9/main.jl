using LinearAlgebra

v(x) = [1 x[1] ;
        1 x[2] ;
        1 x[3] ;
        1 x[4] ;
        1 x[5] ]

function a(x, y)
  V = v(x)
  Vt = transpose(V)
  a = inv(Vt*V)*(Vt*y)
  return a
end

# Exemplo 7.2.1
x = [0.01 ; 1.02 ; 2.04 ; 2.95 ; 3.55]
y = [1.99 ; 4.55 ; 7.20 ; 9.51 ; 10.82]

r = a(x, y)
println(r)
