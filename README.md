# Assessment Técnico Final

Questões:


- [QUESTÃO 1] Em uma situação onde você precisa escrever arquivos em múltiplos formatos, exemplo (XML, HTML, JSON, CSV …)
e você não tem noção de quantos mais formatos serão utilizados no futuro. Crie uma solução para resolver este problema via código. 
  - Coloque abaixo o link do seu github:
    - https://github.com/romarioddo/assessment-tecnico-final/blob/main/question1/README.md


- [QUESTÃO 2] Crie uma implementação para envio de notificação de usuário após a confirmação de pedidos, esta notificação
será feita pelos seguintes providers (Whatsapp, SMS e email)
Queremos ver como você montaria o design deste código, por isso não precisa implementar a ação de envio dos providers,
a avaliação será feita somente na organização da implementação feita por você. 
  - Coloque abaixo o link do seu github:
    - https://github.com/romarioddo/assessment-tecnico-final/blob/main/question2/README.md


- [QUESTÃO 3] Crie uma implementação para uma ação onde iremos ter múltiplos envios onde será executada de uma só vez. exemplo:
SMS, Email e ao assinar em uma newsletter os usuários deverão receber todas as notificações enviadas por esta classe base. 
  - Coloque abaixo o link do seu github:
    - https://github.com/romarioddo/assessment-tecnico-final/blob/main/question3/README.md


- [QUESTÃO 4]Em uma situação que temos múltiplos ifs encadeados, faça uma refatoração para deixar o código mais fácil para dar manutenção. Exemplo:
    ```ruby
    class Action
      def initialize(type)
        @type = type
      end
    
      def call
        if @type == "TIPO1"
          puts "Executa ação TIPO1"
        elsif @type == "TIPO2"
          puts "Executa ação TIPO2"
        elsif @type == "TIPO3"
          puts "Executa ação TIPO3"
        elsif @type == "TIPO4"
          puts "Executa ação TIPO4"
        elsif @type == "TIPO5"
          puts "Executa ação TIPO5"
        elsif @type == "TIPO6"
          puts "Executa ação TIPO6"
        end
      end
    end
    ```
  - Coloque abaixo o link do seu github:
    - https://github.com/romarioddo/assessment-tecnico-final/blob/main/question4/README.md


- [QUESTÃO 5] Em uma implementação onde teremos algumas validações para clientes e fornecedores contendo CPF e CNPJ, como
você montaria a lógica levando em conta que você está em uma aplicação rails e terá uma única tabela de pessoas,
contento física (CPF) e jurídica (CNPJ. 
  - Coloque abaixo o link do seu github:



- [QUESTÃO 6] Seu cliente está querendo fazer um bot (Robô de transmissão) para informar aos jornalistas o resultado dos
jogos da copa do mundo e você foi responsável por criar esta solução. A usabilidade será:
  1. Digita na caixa de texto informar jogo
  2. Aparece os jogos em execução
  3. Ele digitará qual jogo quer acompanhar
  4. e irá receber as informações de tempos em tempos. 

  - Digite abaixo qual solução você faria:



- [QUESTÃO 7] Continuando com o sistema de bot (Robô de transmissão) acima, a empresa que você trabalha precisa criar um
novo recurso e você ficou responsável por criar a feature que consistem em fazer upload do arquivo xlsx onde contém
todos os times de futebol e o id do cliente que irá receber por notificação de SMS em tempo real do status do jogo, o
descadastramento do time vai ser feito pelo próprio cliente em uma devolução de SMS para o telefone da empresa. 
  - Digite abaixo como você solucionaria este problema:



- [QUESTÃO 8] Como você melhoraria o código abaixo:
    ```ruby
    class JsonWriter
      def self.writer
        content = '
          {
            "breakfast_menu": {
              "food": [
                {
                  "name": "Belgian Waffles",
                  "price": "$5.95",
                  "description": "Two of our famous Belgian Waffles with plenty of real maple syrup",
                  "calories": 650
                },
                {
                  "name": "Strawberry Belgian Waffles",
                  "price": "$7.95",
                  "description": "Light Belgian waffles covered with strawberries and whipped cream",
                  "calories": 900
                },
                {
                  "name": "Berry-Berry Belgian Waffles",
                  "price": "$8.95",
                  "description": "Belgian waffles covered with assorted fresh berries and whipped cream",
                  "calories": 900
                }
              ]
            }
          }
        '
        File.write('file.json', content)
      end
    end
    
    class XMLWriter
      def self.writer
        content = '
          <?xml version="1.0" encoding="UTF-8"?>
          <breakfast_menu>
          <food>
          <name>Belgian Waffles</name>
          <price>$5.95</price>
          <description>
          Two of our famous Belgian Waffles with plenty of real maple syrup
          </description>
          <calories>650</calories>
          </food>
          <food>
          <name>Strawberry Belgian Waffles</name>
          <price>$7.95</price>
          <description>
          Light Belgian waffles covered with strawberries and whipped cream
          </description>
          <calories>900</calories>
          </food>
          <food>
          <name>Berry-Berry Belgian Waffles</name>
          <price>$8.95</price>
          <description>
          Belgian waffles covered with assorted fresh berries and whipped cream
          </description>
          <calories>900</calories>
          </food>
          </breakfast_menu>
        '
        File.write('file.xml', content)
      end
    end
    
    puts "Qual arquivo você deseja salvar?"
    puts "JSON"
    puts "CSV"
    
    option = gets
    
    if option == "JSON"
      JsonWriter.writer
    end
    
    if option == "CSV"
      XMLWriter.writer
    end
    ```
    - Coloque abaixo o link do seu github:
      - https://github.com/romarioddo/assessment-tecnico-final/blob/main/question8/README.md


- [QUESTÃO 9] O sistema que você trabalha tem muitas funções e dependências (componentes para o funcionamento da
arquitetura) e você precisa ajudar sua equipe facilitando o setup da aplicação para novos integrantes do time.
  - Descreva abaixo como você faria:
    - https://github.com/romarioddo/assessment-tecnico-final/blob/main/question9/README.md


- [QUESTÃO 10] Surgiu uma demanda para construir a arquitetura de um sistema para locação de veículos. Esta demanda é
para um projeto grande onde terá várias pessoas no time de desenvolvimento. Você como líder do projeto ficou
responsável por criar esta arquitetura.
Algumas funções deste sistema incluem:
  - Envio de email 
  - Envio de SMS 
  - Uso de gateway de pagamento 
  - Envio de comprovante em PDF
  
  Coloque na resposta a estrutura de pastas e arquivos, exemplo:
    ```ruby
    app
    controllers
    client_controller.tb
    abstracts
    abstract.rb
    models
    client.rb
    example.rb
    .gitignore
    etc …
    ```
    Obs: não precisa ter implementação de código, a avaliação será feita somente na estrutura de arquivos e organização do projeto 

  - Coloque abaixo o link do seu github:
