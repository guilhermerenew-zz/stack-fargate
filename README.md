# Apresentação

## Sobre
Projeto se baseia em execução de API REST em python para realização de chamadas e valores mantidos podem ser consultados por consultas HTTP. Vimos essa aplicação de um modo não só interativo mais que pode ser utilizado em diversas frentes com relação a comunicação e status page. Por se basear em chamadas REST e a uma liguagem de facil execução e interpretação o mapeammento da evolução de plataforma foi divido entre as etapas:

![picture](./imagens/stack-steps.jpg)

Com essas etapas simples, foi construída uma stack de entrega de infraestrutura baseada em diversos pontos com relação a qualidade de software, disponibilidade e resproveitamento de código. Vamos passar em cada uma delas.

### App.
Como descrito abaixo o método de consulta com relação a aplicação é basicamente o POST de um novo comentário e a consulta do mesmo. Porém isso não inibe a forma como código estará disponibilizado e para nós voltados a Infra, termos escalabilidade e precisão a cada passo que a aplicação realiza.

### Build Image
Pensando em emcapsular uma aplicação de forma integra e mantendo os componentes intactos o docker foi a solução mais rápida e simples de disponibilizarmos a aplicação aonde quer que ela esteja. Isso quer dizer que em qualquer com disponibilidade de execução de containers esta imagem será executada da mesma forma.

### Playground Development
Tal etapa é onde desenvolvemos **e testamos** toda entrega da infraestrutura e como ela sera disponibilizada posteriormente. Tal etapa envolve a entrega da stack como código e pipeline de teste desse código.


### Production 
Em "produção" é o frontend em que nossa aplicação será disponibilizada, onde temos uma infrastrutura baseada no comportamento de aplicação por tras de tudo isso. 


# Descrição do Case 
## Considerações Gerais

Você deverá usar este repositório como o repo principal do projeto, i.e., todos os seus commits devem estar registrados aqui, pois queremos ver como você trabalha.

A escolha de tecnologias é livre para a resolução do problema. Utilize os componentes e serviços que melhor domina pois a apresentação na entrega do desafio deverá ser como uma aula em que você explica em detalhes cada decisão que tomou.

Registre tudo: testes que foram executados, ideias que gostaria de implementar se tivesse tempo (explique como você as resolveria, se houvesse tempo), decisões que foram tomadas e seus porquês, arquiteturas que foram testadas e os motivos de terem sido modificadas ou abandonadas. Crie um arquivo COMMENTS.md ou HISTORY.md no repositório para registrar essas reflexões e decisões.


# O Problema

O desafio que você deve resolver é a implantação da aplicação de Comentários em versão API (backend) usando ferramentas open source da sua preferência.

Você precisa criar o ambiente de execução desta API com o maior número de passos automatizados possível, inclusive a esteira de deploy.

A aplicação será uma API REST que está disponível neste repositório. Através dela os internautas enviam comentários em texto de uma máteria e acompanham o que outras pessoas estão falando sobre o assunto em destaque. O funcionamento básico da API consiste em uma rota para inserção dos comentários e uma rota para listagem.

Os comandos de interação com a API são os seguintes:

* Start da app

```
cd app
gunicorn --log-level debug api:app
```

* Criando e listando comentários por matéria

```
# matéria 1
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"alice@example.com","comment":"first post!","content_id":1}'
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"alice@example.com","comment":"ok, now I am gonna say something more useful","content_id":1}'
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"bob@example.com","comment":"I agree","content_id":1}'

# matéria 2
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"bob@example.com","comment":"I guess this is a good thing","content_id":2}'
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"charlie@example.com","comment":"Indeed, dear Bob, I believe so as well","content_id":2}'
curl -sv localhost:8000/api/comment/new -X POST -H 'Content-Type: application/json' -d '{"email":"eve@example.com","comment":"Nah, you both are wrong","content_id":2}'

# listagem matéria 1
curl -sv localhost:8000/api/comment/list/1

# listagem matéria 2
curl -sv localhost:8000/api/comment/list/2
```


# O que será avaliado na sua solução?

* Automação da infra, provisionamento dos hosts (IaaS)

* Automação de setup e configuração dos hosts (IaC)

* Pipeline de deploy automatizado

* Monitoramento dos serviços e métricas da aplicação


# Dicas

Use ferramentas e bibliotecas open source, mas documente as decisões e porquês;

Automatize o máximo possível;

Em caso de dúvidas, pergunte.
