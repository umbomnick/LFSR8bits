import time

# LFSR 8-bits - Direção: Desloca para a Direita, Insere na Esquerda
n_bits = 8
semente_inicial = 0b10010001 
bits_taps = [7, 5, 4, 3]
estado_atual = semente_inicial

print("=== Simulação LFSR Automática Infinita ===")
print("⚠️ Pressione [Ctrl + C] no teclado para parar o programa! ⚠️")
time.sleep(2) # Dá 2 segundos para ler o aviso antes de começar

clock = 1

try:
    while True: # Loop infinito!
        print(f"\n---> CICLO DE CLOCK {clock} <---")
        
        # 1. Mostra o estado atual em binário
        binario_atual = format(estado_atual, '08b')
        print(f"Estado: | {' | '.join(binario_atual)} |")
        
        # 2. Calcula a XOR
        feedback = 0
        for i, tap in enumerate(bits_taps):
            bit_valor = (estado_atual >> tap) & 1
            if i == 0:
                feedback = bit_valor
            else:
                feedback ^= bit_valor 
                
        print(f"Resultado do Funil XOR (novo bit): {feedback}")
        
        # 3. Desloca para a DIREITA e insere o feedback na ESQUERDA
        bit_output = estado_atual & 1
        print(f"Bit que caiu para fora (output): {bit_output}")
        
        novo_estado = (estado_atual >> 1) | (feedback << 7)
        
        # 4. Atualiza os valores para o próximo ciclo
        estado_atual = novo_estado
        clock += 1
        
        # Pausa automática de 1.5 segundos (você pode alterar esse valor para deixar mais rápido ou mais lento)
        time.sleep(1.5)

# Captura o Ctrl+C para sair bonitinho sem mostrar erro na tela
except KeyboardInterrupt:
    print("\n\n🛑 Simulação parada pelo usuário!")
    print(f"Último estado: {estado_atual} (0b{format(estado_atual, '08b')})")