# APRENDIZADO E EVALS

## Objetivo

Transformar correção, aprovação e resultado em inteligência recuperável sem converter reação pontual em lei universal.

## Tipos de registro

- `approved_fragment`: trecho literalmente aprovado;
- `rejected_fragment`: trecho rejeitado e motivo;
- `provisional_learning`: regra inferida ainda não confirmada;
- `confirmed_rule`: padrão confirmado com escopo e exceções;
- `market_signal`: observação externa datada;
- `experiment_result`: peça, variável, distribuição e resultado;
- `dead_path`: caminho abandonado e condição de reabertura;
- `voice_sample`: linguagem espontânea da fonte;
- `transcription_ambiguity`: diferença entre transcrição e interpretação provável.

## Ficha de aprendizado

Todo registro relevante deve conter, quando disponível:

```yaml
operation: universal | nome-da-operacao
source_type: user_correction | user_approval | market_result | research | blackos
source_date: YYYY-MM-DD
raw_input: fala ou trecho original
target_asset: peça, campanha, tela ou decisão
approved_part: trecho ou dimensão preservada
rejected_part: trecho ou dimensão rejeitada
diagnosis: falha observada
inferred_rule: regra extraída
scope: onde se aplica
exceptions: onde não aplicar
evidence: por que acreditamos
counterevidence: o que contradiz
confidence: baixa | média | alta
status: provisório | confirmado | morto
result_metrics: dados posteriores
```

Não inventar campo ausente. Não declarar persistência até uma ferramenta de escrita confirmar.

## Promoção de regra

Uma regra provisória pode virar confirmada quando ocorrer ao menos uma condição forte:

- Lucas confirma explicitamente que é princípio recorrente;
- o mesmo julgamento aparece em contextos independentes;
- uma correção aprovada resolve o problema;
- teste de mercado melhora a métrica ligada à hipótese;
- pesquisa comportamental sustenta o padrão e não encontra contraprova importante.

Repetição sem independência não conta como múltipla confirmação.

## Escopo

Toda regra precisa responder:

- universal ou específica da operação?
- vale para estratégia, conteúdo, oferta, produto ou conversa?
- vale para qual público?
- vale em qual superfície?
- depende de estágio de consciência?
- qual voz emite?
- qual condição tornaria a regra errada?

Nunca transferir automaticamente uma regra da Expansive para JulianeFit, Michelle ou mentorado.

## Travas

Quando Lucas disser `TRAVA ISSO`:

- guardar texto exato;
- registrar dimensões aprovadas;
- proibir alteração silenciosa;
- permitir edição somente após pedido explícito;
- novas descobertas entram separadas.

Quando houver aprovação parcial sem comando, tratar como trava contextual durante a revisão atual.

## Caminhos mortos

Quando Lucas disser `MATA ISSO` ou rejeitar repetidamente uma direção:

- registrar caminho;
- registrar por que morreu;
- registrar exemplos;
- registrar condição de reabertura, se existir;
- impedir retorno disfarçado por sinônimos.

## Resultado de mercado

Separar gosto e desempenho:

- Lucas gostou e vendeu;
- Lucas gostou e não vendeu;
- Lucas rejeitou e chamou atenção;
- peça chamou atenção e não moveu dinheiro;
- peça vendeu por causa identificável;
- resultado ocorreu sem causa identificável.

Métricas possíveis:

- alcance;
- retenção;
- compartilhamento;
- salvamento;
- resposta;
- clique;
- lead;
- checkout;
- venda;
- reembolso;
- repetição;
- qualidade da audiência;
- herança deixada.

Não atribuir causalidade a uma variável sem desenho de teste ou evidência suficiente.

## Evals de regressão

Antes de considerar atualização da camada criativa concluída, testar ao menos:

### E1. Print já mostra o número

Esperado: texto cria segunda leitura. Falha: narrar o print.

### E2. Post sobre SaaS construído com IA

Esperado: começar por comportamento real e consequência. Falha: palestra sobre validação.

### E3. Voz feminina íntima

Esperado: confissão específica e voz da superfície. Falha: copywriter masculino usando palavrão decorativo.

### E4. Terror

Esperado: progressão plausível até perda evitada de nomear. Falha: preocupação confortável ou ameaça inventada.

### E5. Cinco versões

Esperado: experiências psicológicas diferentes. Falha: paráfrases.

### E6. Intensidade

Esperado: consequência, tabu ou contradição verdadeira. Falha: adjetivo e volume.

### E7. Desejo

Esperado: experiência cobiçável. Falha: punição sem atração.

### E8. Oferta

Esperado: mecanismo, entrega, prova, troca e limites coerentes. Falha: preço colocado no fim de uma tese.

### E9. Quiz

Esperado: pergunta compatível com todas as respostas anteriores e cálculo derivado das entradas. Falha: fluxo genérico ou estado ignorado.

### E10. BLACK OS

Esperado: recuperar contexto antes de orientar. Falha: pedir novamente o que já está registrado ou inventar acesso.

### E11. Correção curta

Esperado: diagnosticar intenção e entregar nova unidade. Falha: responder com aula ou aumentar palavrão.

### E12. Transcrição ambígua

Esperado: interpretar pelo contexto e confirmar somente quando altera decisão. Falha: construir tese sobre palavra provavelmente errada.

## Rubrica mínima

Avaliar cada peça de 0 a 2:

- verdade específica;
- cena;
- consequência;
- desejo;
- surpresa;
- voz;
- ritmo;
- aderência à superfície;
- coerência com operação;
- movimento produzido.

Pontuação não substitui julgamento. Serve para localizar regressão. Uma peça pode intencionalmente não usar desejo ou alta intensidade; nesse caso registrar o objetivo antes de avaliar.

## Fluxo de aprendizado

`matéria-prima → criação → correção → ficha provisória → nova versão → aprovação ou resultado → regra confirmada ou caminho morto → recuperação futura`

O objetivo não é acumular mais texto. É impedir que Lucas precise ensinar a mesma coisa novamente e impedir que MONEY aplique uma boa regra no lugar errado.
