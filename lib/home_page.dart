import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

  TextEditingController searchController = TextEditingController();
  String details = 'Well sanitized kitchen * Daily temperature checks * Rider hand wash';


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Flutter Assignment'),
      ),
      body: Column(
        children: <Widget>[
        const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              controller: searchController,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.grey.shade400,
                hintText: 'Search for restraunts, cuisines',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                )

              ),
              onChanged: (val){},
            ),
          ),
        Divider(
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
            color: Colors.grey.shade200,
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder:(context, index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(10),),
                                  color: Colors.grey.shade700
                                ),
                                child: const Center(child: Text('Image')),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Ovenstory Pizza',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 80),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green.shade700,
                                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 6,vertical: 4),
                                          child: Text(
                                            '4.0',
                                            style: TextStyle(
                                              color: Colors.white,
                                                fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Pizza',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  '₹200 per person | 52 mins',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Closes in 25 Minutes',
                                  style: TextStyle(
                                    color: Colors.deepOrange.shade300,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Promoted',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: SizedBox(
                                    width: 250,
                                    child: Text(
                                      details,
                                      softWrap: true,
                                      style: TextStyle(
                                        color: Colors.blue.shade300,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}