import 'package:doctor_pert/models/calendar_event.dart';
import 'package:doctor_pert/models/dummy_data.dart';
import 'package:doctor_pert/models/medical_practice.dart';
import 'package:doctor_pert/models/person.dart';
import 'package:doctor_pert/util.dart';
import 'package:doctor_pert/models/reservation.dart';
import 'package:doctor_pert/models/employee.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/time_table.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class ReserveScreen extends StatefulWidget {
  final String doctorId;
  const ReserveScreen({super.key, required this.doctorId});

  @override
  State<ReserveScreen> createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  int _currentStep = 0;
  final DateTime _selectedDate = DateTime.now();
  final TimeOfDay _selectedTime = TimeOfDay.now();

  final Employee _selectedEmployee = practice1.employees[0];
  final Person _patient = person1;

  final int _maxStep = 3;
  MedicalPractice practice = practice1;

  @override
  Widget build(BuildContext context) {
    List<CalendarEvent> availableAppointments = await practice1.availableAppointments(
        DateTime.startOfCurrentWeek,
        DateTime.startOfCurrentWeek.add(const Duration(days: 7)));

    return Stepper(
      currentStep: _currentStep,
      type: StepperType.vertical,
      controlsBuilder: (context, details) {
        return Row(
          children: [
            if (_currentStep == 0)
              TextButton(
                  onPressed: () {},
                  child: Text(t(PhraseKey.cancel).toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium)),
            if (_currentStep > 0)
              TextButton(
                  onPressed: details.onStepCancel,
                  child: Text(t(PhraseKey.no_entry).toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium)),
            if (_currentStep < _maxStep)
              TextButton(
                  onPressed: details.onStepContinue,
                  child: Text(t(PhraseKey.no_entry).toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium)),
            if (_currentStep == _maxStep)
              TextButton(
                  onPressed: () {},
                  child: Text(t(PhraseKey.no_entry).toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium)),
          ],
        );
      },
      onStepCancel: () {
        if (_currentStep > 0) {
          setState(() {
            _currentStep--;
          });
        }
      },
      onStepContinue: () {
        if (_currentStep < _maxStep) {
          setState(() {
            _currentStep++;
          });
        }
      },
      onStepTapped: (index) {
        setState(() {
          _currentStep = index;
        });
      },
      steps: [
        Step(
            title: Text(t(PhraseKey.no_entry),
                style: Theme.of(context).textTheme.labelLarge),
            content: TimeTable(
                availableAppointments: availableAppointments,
                reservations: reservations)),
        Step(
          title: const Text(""),
          content: Column(
            children: <Widget>[
              ListView.builder(
                shrinkWrap: true,
                itemCount: practice.availableAppointments.length,
                itemBuilder: (BuildContext context, int itemIndex) {
                  return ListTile(
                    title: Text(practice.employees[itemIndex].name,
                        style: Theme.of(context).textTheme.labelLarge),
                  );
                },
              ),
            ],
          ),
        ),
        Step(
          title: Text(t(PhraseKey.no_entry),
              style: Theme.of(context).textTheme.labelLarge),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: t(PhraseKey.first_name),
                    hintText: t(PhraseKey.first_name_hint)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: t(PhraseKey.last_name),
                    hintText: t(PhraseKey.last_name_hint)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: t(PhraseKey.phone),
                    hintText: t(PhraseKey.phone_hint)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: t(PhraseKey.email),
                    hintText: t(PhraseKey.email_hint)),
              ),
            ],
          ),
        ),
        Step(
          title: Text(t(PhraseKey.reservation_overview_step),
              style: Theme.of(context).textTheme.labelLarge),
          content: Column(
            children: [
              ListTile(
                title: Text(t(PhraseKey.date)),
                trailing: Text(_selectedDate.toString()),
              ),
              ListTile(
                title: Text(t(PhraseKey.time)),
                trailing: Text(_selectedTime.toString()),
              ),
              const Divider(),
              ListTile(
                title: Text(t(PhraseKey.doctor)),
                trailing: Text(practice.name),
              ),
              ListTile(
                title: Text(t(PhraseKey.employee)),
                trailing: Text(_selectedEmployee.name),
              ),
              const Divider(),
              ListTile(
                title: Text(t(PhraseKey.patient)),
                trailing: Text(_patient.name),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

extension StartOfWeek on DateTime {
  static DateTime get startOfCurrentWeek {
    DateTime monday = DateTime.now();
    monday.subtract(Duration(days: monday.weekday - 1));
    return DateTime(monday.year, monday.month, monday.day);
  }
}
