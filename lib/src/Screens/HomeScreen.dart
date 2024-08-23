import 'package:flutter/material.dart';
import 'package:mercadolibre2/lists/Category.dart';
import 'package:mercadolibre2/src/Controllers/category_controller.dart';
import 'package:mercadolibre2/src/Screens/ProductScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Category>> futureCategories;
  int _chooseItem = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    futureCategories = fetchCategories();
  }

  void _onItemChoose(int index) {
    setState(() {
      _chooseItem = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Company Name'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.cyan[400],
                ),
                child: const Icon(Icons.login_outlined),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.cyan[400],
                ),
                child: const Icon(Icons.app_registration_rounded),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _chooseItem = index;
          });
        },
        children: [
          buildHomeContent(),
          const ProductScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.cyan[400],
        currentIndex: _chooseItem,
        onTap: _onItemChoose,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0),
            label: 'Start',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_2, size: 30.0),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app_rounded, size: 30.0),
            label: 'Exit',
          ),
        ],
      ),
    );
  }

  Widget buildHomeContent() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Product search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_rounded),
                color: Colors.cyan[400],
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/manage');
                },
                icon: const Icon(Icons.manage_accounts_rounded),
                color: Colors.cyan[400],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Expanded(
            child: FutureBuilder<List<Category>>(
              future: futureCategories,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData) {
                  final categories = snapshot.data!;
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: const Color(0xFF141414),
                        elevation: 2.0,
                        margin: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(iconos[index]['icono'], color: Colors.cyan[400]),
                                const SizedBox(height: 10),
                                Text(
                                  categories[index].nombre,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 12.0, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(child: Text('No categories found'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
