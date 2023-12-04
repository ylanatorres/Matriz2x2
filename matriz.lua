-- Função que calcula determinante de uma matriz 2x2
function Determinante(matriz)
    return matriz[1][1] * matriz[2][2] - matriz[1][2] * matriz[2][1]
end

function ObterMatriz() -- Função para obter uma matriz 2x2 a partir da entrada do usuário
    local matriz = {}
    print("Insira os elementos da matriz:")

    for i = 1, 2 do     -- Loop para preencher a matriz
        matriz[i] = {}
        for j = 1, 2 do
            io.write("Digite o elemento [" .. i .. "][" .. j .. "]: ")
            matriz[i][j] = tonumber(io.read())
        end
    end

    return matriz
end

local matrizformada = ObterMatriz()

print("\nMatriz formada:")
for i = 1, 2 do
    for j = 1, 2 do
        io.write(matrizformada[i][j] .. "\t")
    end
    print()
end

local det = Determinante(matrizformada) -- Calcula o determinante da matrizformada usando a função Determinante
print("\nDeterminante igual a: " .. det)