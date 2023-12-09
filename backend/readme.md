 # Readme da API de Gamificação
## Visão Geral
    Esta API de Gamificação foi projetada para dar suporte ao front-end  a um sistema de gamificado no qual os usuários podem ser classificados com base em seus pontos que serão dados conforme seus check-in. Os usuários podem criar contas, ganhar pontos por meio de check-ins e é possível recuperar a classificação geral dos usuários.

## Endpoints 🛣️
    -  Obter Classificação
        - Endpoint: /ranking
        - Método: GET
        - Descrição: Recupera a classificação dos usuários com base em seus pontos.
        - Resposta:
            -Status 200: Recuperação bem-sucedida da classificação.
            -Status 400: Erro ao recuperar a classificação.

    - Criar Usuário
        - Endpoint: /cadastro
        - Método: POST
        - Descrição: Cria um novo usuário com valores iniciais. Os usuários começam com zero pontos e podem - ser atualizados posteriormente.
        - Corpo da Solicitação:
            - nomeCompleto (String): Nome completo do usuário.
            - curso (String): Informações do curso do usuário.
            - instituicao (String): Informações da instituição do usuário.
        - Resposta:
            - Status 200: Criação de usuário bem-sucedida.
            - Status 400: Erro ao criar um novo usuário.

    - Atualizar Check-in e Pontos
        - Endpoint: /check/:id
        - Método: PATCH
        - Descrição: Atualiza o status de check-in e os pontos de um usuário.
        - Parâmetros da Solicitação:
            -id (String): ID do usuário.
        - Corpo da Solicitação:
            -checkIn (Boolean): Indica se o usuário está fazendo check-in.
        - Resposta:
            - Status 200: Atualização bem-sucedida. Retorna as informações atualizadas do usuário.
            - Status 400: Erro ao atualizar as informações do usuário.


## Dependências ⚠️
    Esta API depende de um banco de dados MongoDB para armazenar informações do usuário.

## Configuração
    Clone o repositório.
    Instale as dependências: npm install.
    Configure um banco de dados MongoDB e atualize a string de conexão em userModel.js.
    Execute o servidor: npm start.

