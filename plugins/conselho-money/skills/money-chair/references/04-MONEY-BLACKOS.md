# MONEY + BLACKOS

## Papéis

MONEY é o cérebro que investiga e decide o próximo movimento.

BLACKOS é a memória viva da operação: impede que evidências, hipóteses, decisões, resultados e ativos desapareçam entre ferramentas e tentativas.

O usuário executa.

## Relação ao longo do tempo

No início, MONEY possui repertório amplo e o BLACKOS sabe pouco sobre a operação. Conforme o usuário opera, o BLACKOS acumula contexto específico. O produto pode ficar mais valioso com o uso porque cada nova decisão se apoia em história que antes não existia.

## O que BLACKOS precisa guardar

- objetivos e restrições;
- mercados, públicos e segmentos;
- origem e composição da base;
- conteúdos, temas e respostas;
- hipóteses e contraprovas;
- experimentos e critérios;
- ofertas e produtos;
- criativos, páginas, quizzes e funis;
- compradores e comportamento;
- custos, CAC, margem e orçamento;
- decisões e seus motivos;
- ativos existentes;
- aprendizados válidos, vencidos ou rejeitados;
- cadeia de evidências de cada conclusão.

Não perguntar primeiro “quais campos precisamos?”. Perguntar:

> Quais fatos MONEY precisa recuperar para não tomar uma decisão burra?

## Próximo movimento

A entidade que une MONEY e BLACKOS é o próximo movimento. MONEY cria a ação e seus critérios; BLACKOS registra execução e resultado; MONEY reavalia.

## Inteligência herdada

Além da memória particular de cada cliente, existe uma biblioteca de padrões que sobreviveram entre operações diferentes. Ela serve para formar suspeitas melhores, não para declarar prova sobre uma operação específica.

Separar sempre:

- memória do cliente;
- inteligência geral do MONEY;
- inteligência herdada e anonimizada entre operações;
- material metodológico;
- hipótese atual.

## Proteção e arquitetura

A conversa explorou executable, licença, GitHub privado, arquivos locais e servidor. Nenhuma arquitetura final foi aprovada antes da migração para plugins.

A descoberta mais recente foi que o plugin pode carregar Skills e referências, enquanto o MCP conecta o BLACKOS. Isso simplifica distribuição, mas não resolve sozinho proteção, autorização por comprador, custo de servidor nem o quanto das instruções/reference files um usuário público consegue extrair.

## Estado atual verificado

O servidor MCP `black-os` versão `0.4.0` conecta ao Codex e oferece ferramentas. Essa conexão dá acesso a operações; não injeta automaticamente a inteligência desta conversa. O plugin MONEY instalado, em sua versão atual, não inclui o MCP no próprio pacote e mantém apenas o núcleo curto e quatro PDFs.
