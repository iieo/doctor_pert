import 'package:doctor_pert/models/calendar_event/calendar_event.dart';
import 'package:doctor_pert/models/employee/employee.dart';
import 'package:doctor_pert/models/medical_practice/medical_practice.dart';
import 'package:flutter/material.dart';

class StepperEmployee extends StatelessWidget {
  final MedicalPractice practice;
  final DateTime selectedTime;
  const StepperEmployee(
      {super.key, required this.practice, required this.selectedTime});

  Future<List<Employee>> _loadEmployees() async {
    List<CalendarEvent> events =
        await practice.getAvailableAppointments(selectedTime);
    List<String> eventIds = events.map((e) => e.id).toList();
    return await practice.getEmployeeWithCalendarEvent(eventIds);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Employee>? employees = snapshot.data;
            if (employees == null) {
              return Text("No employees found");
            }
            return ListView.builder(
                itemCount: employees.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(employees[index].firstName), onTap: () {});
                });
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const CircularProgressIndicator();
        },
        future: _loadEmployees());
  }
}
