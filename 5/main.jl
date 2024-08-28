using LinearAlgebra

#Exercicio 4.7.2
A = [5 1 1;
     -1 3 -1;
     1 2 10]

B = [50 ; 10 ; -30]

function jacobi(A, B, k, error)
  n = size(B,1)
  X = zeros(n)
  K = zeros(n)
  for l = 1:k
    for i = 1:n
      count = 0
      for j = 1:n
        if i != j
          count += A[i,j]*X[j]
        end
      end
      K[i] = (B[i]-count)/A[i,i]
    end
    if norm(X-K) < error
      break
    end
    X = copy(K)
  end
  return X
end

function gauss_seidel(A, B, k, error)
  n = size(B,1)
  X = zeros(n)
  K = zeros(n)
  for l = 1:k
    for i = 1:n
      count = [0.0 0.0]
      for j = 1:i-1
        count[1] += A[i,j]*K[j]
      end
      for j = i+1:n
        count[2] += A[i,j]*X[j]
      end
      K[i] = (B[i]-count[1]-count[2])/A[i,i]
    end
    if norm(X-K) < error
      break
    end
    X = copy(K)
  end
  return X
end

error = 10^-3

x_jacobi = jacobi(A,B,100,error)
println("Solução pelo método de Jacobi: ", x_jacobi)

x_gauss_seidel = gauss_seidel(A,B,100,error)
println("Solução pelo método de Gauss-Seidel: ", x_gauss_seidel)


#Exercicio 4.7.3

function jacobi(A, B, k, error)
  n = size(B,1)         # Determina o número de equações
  X = zeros(n)          # Inicia o vetor de soluções com zeros
  K = zeros(n)          # Vetor auxiliar para armazenar a próxima iteração
  for l = 1:k           # Loop sobre o número máximo de iterações
    for i = 1:n         # Loop sobre cada equação
      count = 0
      for j = 1:n       # Soma as contribuições das outras variáveis
        if i != j
          count += A[i,j]*X[j]
        end
      end
      K[i] = (B[i]-count)/A[i,i]  # Calcula o próximo valor da variável
    end
    if norm(X-K) < error         # Verifica a convergência
      break
    end
    X = copy(K)                  # Atualiza a solução
  end
  return X
end

function seidel(A, B, k, error)
  n = size(B,1)
  X = zeros(n)
  K = zeros(n)
  for l = 1:k
    for i = 1:n
      count = [0.0 0.0]  # Vetor para contar as contribuições
      for j = 1:i-1      # Usa os valores já atualizados
        count[1] += A[i,j]*K[j]
      end
      for j = i+1:n      # Usa os valores da iteração anterior
        count[2] += A[i,j]*X[j]
      end
      K[i] = (B[i]-count[1]-count[2])/A[i,i]
    end
    if norm(X-K) < error # Verifica a convergência
      break
    end
    X = copy(K)
  end
  return X
end

A = [5 1 1;
   -1 3 -1;
   1 2 10]

B = [50 ; 10 ; -30]

error = 10^-3

x_jacobi = jacobi(A,B,100,error)
println("Solução pelo método de Jacobi: ", x_jacobi)

x_seidel = seidel(A,B,100,error)
println("Solução pelo método de Gauss-Seidel: ", x_seidel)


#Exercício 4.7.5

function jacobi(A, B, k, error)
 n = size(B,1)         # Determina o número de equações
  X = zeros(n)          # Inicia o vetor de soluções com zeros
  K = zeros(n)          # Vetor auxiliar para armazenar a próxima iteração
  for l = 1:k           # Loop sobre o número máximo de iterações
    for i = 1:n         # Loop sobre cada equação
      count = 0
      for j = 1:n       # Soma as contribuições das outras variáveis
        if i != j
          count += A[i,j]*X[j]
        end
      end
      K[i] = (B[i]-count)/A[i,i]  # Calcula o próximo valor da variável
    end
    if norm(X-K) < error         # Verifica a convergência
      break
    end
    X = copy(K)                  # Atualiza a solução
  end
  return X
end

function seidel(A, B, k, error)
  n = size(B,1)
  X = zeros(n)
  K = zeros(n)
  for l = 1:k
    for i = 1:n
      count = [0.0 0.0]  # Vetor para contar as contribuições
      for j = 1:i-1      # Usa os valores já atualizados
        count[1] += A[i,j]*K[j]
      end
      for j = i+1:n      # Usa os valores da iteração anterior
        count[2] += A[i,j]*X[j]
      end
      K[i] = (B[i]-count[1]-count[2])/A[i,i]
    end
    if norm(X-K) < error # Verifica a convergência
      break
    end
    X = copy(K)
  end
  return X
end

A = [4 0 1;
    2 4 1;
   1 10 3]

B = [56 ; 12 ; -27]

error = 10^-3

x_jacobi = jacobi(A,B,100,error)
println("Solução pelo método de Jacobi: ", x_jacobi)

x_seidel = seidel(A,B,100,error)
println("Solução pelo método de Gauss-Seidel: ", x_seidel)