import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/store.dart';
import 'package:flutter_application_1/models/store_data.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            padding: const EdgeInsets.only(right: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.lightBlue,
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.location_on)),
                const Text("KPHB Phase 5"),
                const Icon(Icons.expand_more_rounded)
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //const Divider(color: Colors.black,),
            const Text(
              'Scan Receipt',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Tap on the store to start scanning the receipt.',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.grey),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search any store name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: const Color.fromRGBO(235, 237, 251, 1)),
                    color: const Color.fromRGBO(235, 237, 251, 1)
                  ),
                  child: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 20, 72, 114),),
                ),
                const SizedBox(width: 10.0),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upload any Bill',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'Earn upto 10% cashback on any store',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10.0),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: const Color.fromRGBO(87, 100, 218, 1)),
                    color: const Color.fromRGBO(87, 100, 218, 1),

                  ),
                  child: TextButton(
                    onPressed: () {
                    },
                    child: const Text(
                      'Scan',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: stores.length,
                itemBuilder: (context, index) {
                  Store store =
                      stores[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.all(16.0),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(store.logo),
                    ),
                    title: Text(store.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (store.isPremium)
                              Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.green,
                                ),
                                child: const Text(
                                  'Premium',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            const SizedBox(width: 5.0),
                            const Text('Delivery'),
                          ],
                        ),
                        Text(
                          'Cashback: \$${store.cashback.toString()}',
                        ),
                      ],
                    ),
                    trailing: Text('${store.distance} km'),
                    onTap: () {
                    },
                  );
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}