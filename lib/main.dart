import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abby M and Thomas W and Dylan Millers\'s App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPage(),
    );
  }
}

// Intro Page (Unchanged)
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Abby M and Thomas W and Dylan Miller's App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThomasWPage()),
                );
              },
              child: const Text("Thomas W's Page"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AbbyMPage()),
                );
              },
              child: const Text("Abby M's Page"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
            Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => DylanMillerPage())
            );
          }, child: Text("Dylan Miller's Page")
          ),
          ],
        ),
      ),
    );
  }
}

// Thomas W's Page with Images
class ThomasWPage extends StatelessWidget {
  const ThomasWPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Thomas W's Page")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/house.png', height: 200),
          const SizedBox(height: 20),
          Image.asset('assets/dog.png', height: 150),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FirstFloorPage()),
              );
            },
            child: const Text("First Floor"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SecondFloorPage()),
              );
            },
            child: const Text("Second Floor"),
          ),
        ],
      ),
    );
  }
}

// Abby M's Page (Placeholder)
class AbbyMPage extends StatelessWidget {
  const AbbyMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Abby M's Page")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image:AssetImage('assets/ispy.png'),
                  width: 400,
                  height: 400,
                ),
              ],
            ),
          
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("How many dogs do you see?",
                style: TextStyle(fontSize: 18),                
                )
              ],
            ),

            Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DogNumberPage()),
                    );
                  }, child: const Text("Answer")),
              ],
            ),
        ]
       )
    );
  }
}

class DylanMillerPage extends StatelessWidget {
  const DylanMillerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dylan Miller's Page")),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you like dogs?"),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder : (context) => const RightPage())
                        );
                      }, child: Text('Yes')),
                      const SizedBox(height: 10),
                      ElevatedButton(
                      onPressed: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder : (context) => const WrongPage())
                        );
                      }, child: Text('No'))
                  ],
                ),
            ],
          )
    );
  }
}

class RightPage extends StatelessWidget {
  const RightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Right On!")),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Here you go!"),
                  Image(
                  image:AssetImage('assets/puppies.png'),
                  width: 700,
                  height: 700,
                ),
                  ],
                  ),
            ],
          )
    );
  }
}

class WrongPage extends StatelessWidget {
  const WrongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ooops.")),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You're wrong!"),
                  const SizedBox(height: 10),
                  ElevatedButton(onPressed: ()
                  {
                    Navigator.pop(context);
                  }, child: Text("Try again."))
                  ],
                  ),
            ],
          )
    );
  }
}

class DogNumberPage extends StatelessWidget {
  const DogNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(" ")),
          body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("The Correct Answer is: 12",
                style: TextStyle(fontSize: 18),                
                )
              ],
            ),
        ]
       )
    );
  }
}

// First Floor Page with Navigation Buttons
class FirstFloorPage extends StatelessWidget {
  const FirstFloorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Floor")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/kitchen.png', height: 200),
          const SizedBox(height: 20),
          Image.asset('assets/familyroom.png', height: 200),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SecondFloorPage()),
              );
            },
            child: const Text("Walk Upstairs"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Leave the House"),
          ),
        ],
      ),
    );
  }
}

// Second Floor Page with Navigation Buttons
class SecondFloorPage extends StatelessWidget {
  const SecondFloorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Floor")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/bedroom.png', height: 200),
          const SizedBox(height: 20),
          Image.asset('assets/bathroom.png', height: 200),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Walk Downstairs"),
          ),
        ],
      ),
    );
  }
}

// FirstRoute (Your Partner's Code)
class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Thomas Route')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

// SecondRoute (Your Partner's Code)
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Abby Route')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
