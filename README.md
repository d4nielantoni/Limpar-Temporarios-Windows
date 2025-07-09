# Limpar Arquivos Temporários Windows 11

Este script PowerShell automatiza a limpeza de arquivos temporários no Windows 11, liberando espaço em disco e potencialmente melhorando o desempenho do sistema.

## O que o script limpa

- Pasta temporária do usuário (%TEMP%)
- Pasta temporária alternativa (%TMP%)
- Pasta temporária do Windows (C:\Windows\Temp)
- Arquivos de prefetch (C:\Windows\Prefetch)
- Cache do Microsoft Edge
- Cache do Google Chrome
- Lixeira do Windows

## Requisitos

- Windows 11 (pode funcionar para windows 10, não testei)
- Permissões de administrador para executar scripts PowerShell

## Como usar

### Método 1: Execução via arquivo .bat (Mais simples)

1. Baixe os arquivos do projeto
2. Dê um duplo clique no arquivo `Limpar-Temporarios.bat` (verificar se os caminhos estão corretos)
3. O script será executado automaticamente com privilégios de administrador

### Método 2: Via PowerShell

1. Abra o PowerShell como administrador
2. Navegue até o diretório onde o script está localizado:
   ```powershell
   cd caminho\para\o\diretorio
   ```
3. Execute o comando:
   ```powershell
   .\Limpar-Temporarios.ps1
   ```

### Método 3: Agendamento de tarefas (comentar ou apagar a linha "Pause")

1. Abra o Agendador de Tarefas do Windows (digite "Agendador de Tarefas" na pesquisa do Windows)
2. Clique em "Criar Tarefa Básica"
3. Dê um nome à tarefa (ex: "Limpeza de Arquivos Temporários")
4. Escolha quando deseja que a tarefa seja executada (diariamente, semanalmente, etc.)
5. Selecione "Iniciar um programa"
6. Em "Programa/script", digite:
   ```
   powershell.exe
   ```
7. Em "Adicionar argumentos", digite:
   ```
   -ExecutionPolicy Bypass -File "caminho\completo\para\Limpar-Temporarios.ps1"
   ```
8. Finalize o assistente
9. Clique com o botão direito na tarefa criada e selecione "Propriedades"
10. Na aba "Geral", marque a opção "Executar com privilégios mais altos"


### Execução sem interação do usuário

Para que o script seja executado sem precisar de interação (sem pausar no final):

1. Abra o arquivo `Limpar-Temporarios.ps1` em um editor de texto
2. Remova ou comente a linha `Pause` no final do script
3. Salve o arquivo
