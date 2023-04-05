c=float(input('Informe o valor do capital: '))
p=float(input('Informe parcela mensal: '))
meses=int(input('Informe os meses: '))
taxa=float(input('Informe a taxa investimento: '))

print(c*taxa)

soma=0

print(soma)
for i in range(meses):
    aumento=c*taxa
    print('Aumento: ',aumento)
    soma=soma+aumento
    print('Valor da soma do aumento por mes ',soma)
    c+=aumento
    print('Capital por mês: ',c)
    c+=p
print('Valor do ganho final: ',soma)
#m=c*(1+i)**n
#m=c*(1+taxa)**meses

#print('O valor do ganho é: ',m)
