import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> dropdownWeight = [
    {"title": "Tola", "value": "Tola"},
    {"title": "ounce", "value": "ounce"},
    {"title": "Gram", "value": "3"},
    {"title": "Kilo", "value": "4"},
    {"title": "Baht(15.244 grams)", "value": "5"},
    {"title": "Tael(37.5 grams)", "value": "6"},
    {"title": "Ratii", "value": "7"},
    {"title": "Masha", "value": "8"},
    {"title": "Grain", "value": "9"},
  ];

  late String selectedCourseValue1 = "Tola";
  late String selectedCourseValue2 = "Tola";
  late String selectedCourseValue3 = "Tola";

  TextEditingController weightController1 = TextEditingController();
  TextEditingController weightController2 = TextEditingController();
  TextEditingController weightController3 = TextEditingController();

  String result1 = "";
  String result2 = "";
  String result3 = "";

  void _calculateAll() {
    double totalPrice = 0.0;

    if (weightController1.text.isNotEmpty) {
      _calculate(weightController1, selectedCourseValue1, (value) {
        setState(() {
          result1 = value!;
          totalPrice += double.parse(value.substring(13)); // Extracting total price from result string
        });
      });
    }

    if (weightController2.text.isNotEmpty) {
      _calculate(weightController2, selectedCourseValue2, (value) {
        setState(() {
          result2 = value!;
          totalPrice += double.parse(value.substring(13)); // Extracting total price from result string
        });
      });
    }

    if (weightController3.text.isNotEmpty) {
      _calculate(weightController3, selectedCourseValue3, (value) {
        setState(() {
          result3 = value!;
          totalPrice += double.parse(value.substring(13)); // Extracting total price from result string
        });
      });
    }

    // Show the final total price
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Final Total Price'),
        content: Text('Total Price Rs = $totalPrice'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  void _calculate(TextEditingController controller, String selectedValue, Function(String?) updateResult) {
    // Parse the input values
    double weightInTola = double.tryParse(controller.text) ?? 0;

    // Define the prices per unit
    double pricePerMasha = 19390.45; // Price per 1 masha in PKR
    double pricePerTola = 213865.22;
    double pricePerOunce = 31.10348;
    double pricePerKilo = 17952314.94; // Price per 1 masha in PKR
    double pricePerBaht = 273611.33;
    double pricePerTael = 678454.03;
    double pricePerRatii = 3266.69;
    double pricePerGram = 1163.01;

    // Calculate the total price
    double totalPrice = 0.0;
    switch (selectedValue) {
      case 'Tola':
        totalPrice = weightInTola * pricePerTola;
        break;
      case 'ounce':
        totalPrice = weightInTola * pricePerOunce;
        break;
      case '3':
        totalPrice = weightInTola * pricePerGram;
        break;
      case '4':
        totalPrice = weightInTola * pricePerKilo;
        break;
      case '5':
        totalPrice = weightInTola * pricePerBaht;
        break;
      case '6':
        totalPrice = weightInTola * pricePerTael;
        break;
      case '7':
        totalPrice = weightInTola * pricePerRatii;
        break;
      case '8':
        totalPrice = weightInTola * pricePerMasha;
        break;
    }

    updateResult('Total Price: $totalPrice');
  }

  void _reset() {
    weightController1.text = '';
    weightController2.text = '';
    weightController3.text = '';

    setState(() {
      selectedCourseValue1 = "Tola";
      selectedCourseValue2 = "Tola";
      selectedCourseValue3 = "Tola";
      result1 = '';
      result2 = '';
      result3 = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Gold Calculator',
          style: TextStyle(
            color: Colors.yellow.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Text(
              "Reset",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.yellow.shade900,
                fontSize: 12,
              ),
            ),
      IconButton(
              onPressed: _reset,
              icon: Icon(Icons.refresh),
            ),
          SizedBox(width: 10,)



        ],
      ),
      body: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 20,right: 20,bottom: 20),
            child: Column(
              children: [
                _buildRow(weightController1, selectedCourseValue1, (value) {
                  setState(() {
                    selectedCourseValue1 = value!;
                  });
                }, result1),
                SizedBox(height: 10,),
                _buildRow(weightController2, selectedCourseValue2, (value) {
                  setState(() {
                    selectedCourseValue2 = value!;
                  });
                }, result2),
                SizedBox(height: 10,),
                _buildRow(weightController3, selectedCourseValue3, (value) {
                  setState(() {
                    selectedCourseValue3 = value!;
                  });
                }, result3),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 30), // Adjust margin as needed
              child: ElevatedButton(
                onPressed: _calculateAll,
                child: Container(
                  width: 200, // Width of the button
                  height: 50, // Height of the button
                  child: Center(
                    child: Text(
                      'Calculate All',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade900, // Change the background color here
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Adjust the border radius if needed
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(TextEditingController controller, String selectedValue, void Function(String?) onUnitChanged, String result) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Weight',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: TextStyle(color: Colors.white),
            controller: controller,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid weight';
              }
              return null;
            },
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: DropdownButtonFormField<String>(
            value: selectedValue,
            decoration: InputDecoration(
              labelText: 'Unit',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            isExpanded: true,
            dropdownColor: Colors.yellow.shade900,
            items: dropdownWeight
                .map<DropdownMenuItem<String>>((e) {
              return DropdownMenuItem<String>(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    e['title']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                value: e['value'],
              );
            }).toList(),
            onChanged: onUnitChanged,
          ),
        ),
        SizedBox(width: 10),
        Text(
          result,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    theme: ThemeData.dark(),
  ));
}
