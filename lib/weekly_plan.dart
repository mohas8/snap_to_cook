import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeeklyPlanScreen extends StatefulWidget {
  @override
  _WeeklyPlanScreenState createState() => _WeeklyPlanScreenState();
}

class _WeeklyPlanScreenState extends State<WeeklyPlanScreen> {
  // Filters
  final List<String> filters = ['None', 'Keto', 'Halal', 'Protein', 'Nutritious'];
  String selectedFilter = 'None';

  late Future<List<MealPlan>> futurePlan;

  @override
  void initState() {
    super.initState();
    futurePlan = fetchWeeklyPlan(selectedFilter);
  }

  void _onFilterChange(String filter) {
    setState(() {
      selectedFilter = filter;
      futurePlan = fetchWeeklyPlan(filter);
    });
  }

  void _downloadPlan() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Download feature coming soon.')),
    );
  }

  // MODEL
  class MealPlan {
    final String day;
    final String meal;

    MealPlan({required this.day, required this.meal});

    factory MealPlan.fromJson(Map<String, dynamic> json) {
      return MealPlan(
        day: json['day'],
        meal: json['meal'],
      );
    }
  }

  // SERVICE
  Future<List<MealPlan>> fetchWeeklyPlan(String filter) async {
    final String apiUrl = 'https://your-api.com/meal-plan?filter=$filter';
    
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((item) => MealPlan.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load meal plan');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weekly Meal Plan'),
        actions: [
          IconButton(icon: Icon(Icons.download), onPressed: _downloadPlan),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: filters.map((filter) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ChoiceChip(
                  label: Text(filter),
                  selected: selectedFilter == filter,
                  onSelected: (_) => _onFilterChange(filter),
                ),
              )).toList(),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<MealPlan>>(
              future: futurePlan,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No meal plans found.'));
                }

                final plans = snapshot.data!;
                return ListView.builder(
                  padding: EdgeInsets.all(16),
                  itemCount: plans.length,
                  itemBuilder: (context, index) {
                    final plan = plans[index];
                    return Card(
                      elevation: 2,
                      margin: EdgeInsets.symmetric(vertical: 6),
                      child: ListTile(
                        leading: CircleAvatar(child: Text(plan.day[0])),
                        title: Text('${plan.day}: ${plan.meal}'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
