import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/tela1',
      routes: {
        '/tela1': (context) => Tela1(),
        '/tela2': (context) => Tela2(),
        '/tela3': (context) => Tela3(),
        '/tela4': (context) => Tela4(),
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindo ao HelpPet\'s',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Selecione uma das opções abaixo',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0), // Espaço entre o texto e os botões
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tela2');
              },
              child: Text('Ir para a Tela 2 (Login)'),
            ),
            SizedBox(height: 16.0), // Espaço entre os botões
            ElevatedButton(
              onPressed: () {
                // Ação do segundo botão
              },
              child: Text('Segundo Botão'),
            ),
            SizedBox(height: 16.0), // Espaço abaixo do segundo botão
            Text(
              "HelpPet's: o app que conecta você ao seu novo companheiro",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela de Login')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Faça seu login para continuar',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Nome de Usuário',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Lógica de autenticação pode ser adicionada aqui
                  // Por enquanto, apenas navegue para a próxima tela
                  Navigator.pushNamed(context, '/tela3');
                },
                child: Text('Login'),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Implemente a ação para "Esqueceu a senha?"
                },
                child: Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Implemente a ação para "Cadastrar-se"
                  Navigator.pushNamed(context, '/tela3'); // Navegar para a tela de cadastro
                },
                child: Text(
                  'Cadastrar-se',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tela3 extends StatelessWidget {
  TextEditingController cnpjController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela de Cadastro')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Crie a sua conta', // Texto adicionado
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: cnpjController,
                decoration: InputDecoration(
                  labelText: 'CNPJ',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: birthDateController,
                decoration: InputDecoration(
                  labelText: 'Data de Nascimento',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Lógica de cadastro pode ser adicionada aqui
                  // Por enquanto, apenas navegue para a próxima tela
                  Navigator.pushNamed(context, '/tela4');
                },
                child: Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tela4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela de Home')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0), // Ajuste a altura aqui
                  leading: Container(
                    width: 64, // Largura da imagem
                    height: 64, // Altura da imagem
                    child: Image.asset(
                      '../assets/item.jpg', // Substitua 'assets/item1.png' pelo caminho da imagem do Item 1
                      fit: BoxFit.cover, // Ajuste a imagem para cobrir o container
                    ),
                  ),
                  title: Text('Item 1'),
                  onTap: () {
                    // Implemente a ação ao tocar no Item 1
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0), // Ajuste a altura aqui
                  leading: Container(
                    width: 64, // Largura da imagem
                    height: 64, // Altura da imagem
                    child: Image.asset(
                      '../assets/item.jpg', // Substitua 'assets/item2.png' pelo caminho da imagem do Item 2
                      fit: BoxFit.cover, // Ajuste a imagem para cobrir o container
                    ),
                  ),
                  title: Text('Item 2'),
                  onTap: () {
                    // Implemente a ação ao tocar no Item 2
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0), // Ajuste a altura aqui
                  leading: Container(
                    width: 64, // Largura da imagem
                    height: 64, // Altura da imagem
                    child: Image.asset(
                      '../assets/item.jpg', // Substitua 'assets/item3.png' pelo caminho da imagem do Item 3
                      fit: BoxFit.cover, // Ajuste a imagem para cobrir o container
                    ),
                  ),
                  title: Text('Item 3'),
                  onTap: () {
                    // Implemente a ação ao tocar no Item 3
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0), // Ajuste a altura aqui
                  leading: Container(
                    width: 64, // Largura da imagem
                    height: 64, // Altura da imagem
                    child: Image.asset(
                      '../assets/item.jpg', // Substitua 'assets/item4.png' pelo caminho da imagem do Item 4
                      fit: BoxFit.cover, // Ajuste a imagem para cobrir o container
                    ),
                  ),
                  title: Text('Item 4'),
                  onTap: () {
                    // Implemente a ação ao tocar no Item 4
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  // Implemente a ação para o ícone 1
                },
                child: Icon(Icons.home),
              ),
              GestureDetector(
                onTap: () {
                  // Implemente a ação para o ícone 2
                },
                child: Icon(Icons.settings),
              ),
              GestureDetector(
                onTap: () {
                  // Implemente a ação para o ícone 3
                },
                child: Icon(Icons.exit_to_app),
              ),
            ],
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}