> **EN:** SwiftUI app simulating a call history with reusable views (`Ligacoes`, `btn`) composed on a single screen. Built in Xcode.
>
> *The rest of this README is in Brazilian Portuguese (pt-BR).*


---

# Ligacoes

App em **SwiftUI** criado para simular uma tela de histórico de chamadas telefônicas utilizando **elementos reutilizáveis** — cada linha de ligação e cada botão do menu superior são views próprias, alimentadas por diferentes parâmetros.

## Status

**Em desenvolvimento** — a estrutura base já existe, mas o app ainda será evoluído.

## Em que consiste

- **`btn`** — botão de ação vertical composto por um ícone de sistema (`SF Symbols`) e um texto descritivo abaixo.
- **`Ligacoes`** — linha de histórico reutilizável que exibe a foto do perfil estilizada em círculo, nome do contato (que fica vermelho se a chamada for perdida), ícone indicativo do tipo de chamada (efetuada/recebida) e a data/hora.
- **`ContentView`** — tela principal que junta o menu superior de botões e renderiza uma lista com cinco registros de chamadas diferentes reaproveitando o componente principal.

Código em `Ligacoes/ContentView.swift`.

## Como executar

Abra o projeto no Xcode e rode no simulador ou dispositivo (▶︎).

## PREVIEW

<img src=./preview></img>
