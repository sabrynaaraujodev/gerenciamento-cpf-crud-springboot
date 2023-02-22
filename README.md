<h1 align="center"> Sistema para cadastro de pessoas </h1>

<p align="center">
<img src="http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge"/>
</p>

# :hammer: Funcionalidades do projeto

- `Funcionalidade 1`: API pública em que seja possível listar, cadastrar, deletar e atualizar pessoas (C.R.U.D)
- `Funcionalidade 2`: endpoint público de busca por CPF

# 📁 Acesso ao projeto

**git clone {URL}**

# 🛠️ Abrir e rodar o projeto

- Executar no terminal o comando "mvn clean install" para instalar e atualizar as dependencias
- Startar o projeto
- Acessar http://localhost:8080/**


# ✔ Técnicas e tecnologias utilizadas

- Java 8
- InteliJ IDEA
- JSP
- Ajax
- Banco H2
- HTML/CSS/JavaScript



# Deploy Heroku

## Passos para o deploy...

### 1) Instalar o _Heroku CLI_

```bash
$ npm install -g heroku-cli
```
### 2) Verificar a instalação do _Heroku CLI_

```bash
$ heroku --version
```

### 3) Efetuar o login com _Heroku CLI_

```bash
$ heroku login

Enter your Heroku credentials:
Email: <SEU E-MAIL>
Password: **********
Logged in as <SEU E-MAIL>
```

> **NOTA**
>
> Necessário ter um usuário registrado no Heroku.
>
> Acessar: [Heroku Signup](https://signup.heroku.com)

### 4) Clonar o repositório do projeto **_backend_**

```bash
$ git clone https://github.com/cod3rcursos/deploy-heroku-backend
```

### 5) Entrar na pasta do projeto **_backend_**

```bash
$ cd deploy-heroku-backend
```

### 6) Criar um projeto no Heroku via _Heroku CLI_

```bash
$ heroku create cod3r-my-money-app-backend
```

> **IMPORTANTE**
>
> Como exemplo, chamaremos a aplicação no Heroku de **cod3r-my-money-app-backend**, mas você precisa escolher um outro nome único.

### 7) Selecionar o buildpack para NodeJS

```bash
$ heroku buildpacks:set heroku/nodejs
```

### 8) Configurar o repositório remoto

```bash
$ heroku git:remote -a cod3r-my-money-app-backend
```

> **IMPORTANTE**
>
> Usar o **nome** do seu projeto.

### 9) Adicionar o Add-on do **_mLab_** para termos uma instância do **_MongoDB_**

![](doc/mongo_addon.png)
*Add-on do **_mLab_***

> **IMPORTANTE**
>
> Apesar de escolher a instância do MongoDB **grátis**, é necessário informar os dados de pagamento (cartão de crédito)... **:(**

### 10) Clicar no Add-on do **_mLab_** e adicionar o usuário da aplicação

![](doc/mongo_add_user.png)
*Adicionar usuário do **_MongoDB_***

> **NOTA**
>
> No exemplo acima criei um usuário com nome **mymoneyapp** e senha **mymoneyapp**. **É obvio que esse padrão senha não é recomendado para produção**.

### 11) Configurar as variáveis de ambiente que a aplicação **_backend_** usa.

```bash
# URL_MONGO é mais ou menos assim: mongodb://user:pass@XYZ.mlab.com:19585/heroku_XYZ
$ heroku config:set MONGOLAB_URI=<URL_MONGO>

# Gere o seu próprio AUTH_SECRET
$ heroku config:set AUTH_SECRET=4bc12841b901f1716f71ab76b99699d6
```

### 12) Fazer deploy da aplicação via **push** no repositório.

```bash
$ git push heroku master
```

### 13) Definir o tipo de escalonamento mínimo (grátis) - Passo **Opcional**

```bash
$ heroku ps:scale web=1
```

### 14) Consultar o log e verificar se tudo ocorreu bem - Passo **Opcional**

```bash
$ heroku logs --tail
```