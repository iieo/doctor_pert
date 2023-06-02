import 'package:doctor_pert/models/calendar_event.dart';
import 'package:doctor_pert/models/dummy_data.dart';
import 'package:doctor_pert/models/medical_practice.dart';
import 'package:doctor_pert/models/person.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/StepperControls.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/person_details.dart';
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
  final int _maxStep = 2;

  final Employee _selectedEmployee = practice1.employees[0];
  final MedicalPractice practice = practice1;

  CalendarAppointmentEvent? _selectedEvent;
  Person _patient = person1;

  void setSelectedEvent(CalendarAppointmentEvent event) {
    _selectedEvent = event;
  }

  void setSelectedPerson(Person person) {
    _patient = person;
  }

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _currentStep,
      type: StepperType.vertical,
      controlsBuilder: (BuildContext context, ControlsDetails details) {
        return StepperControls(
            currentStep: _currentStep, maxStep: _maxStep, details: details);
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
          if (_currentStep == 0 && _selectedEvent == null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(t(PhraseKey.no_entry)),
                duration: const Duration(seconds: 1)));
            return;
          }
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
            title: Text(t(PhraseKey.stepper_select_time),
                style: Theme.of(context).textTheme.labelLarge),
            content: TimeTable(
              practice: practice,
              onSelected: setSelectedEvent,
            )),
        Step(
          title: Text(t(PhraseKey.stepper_person_details),
              style: Theme.of(context).textTheme.labelLarge),
          content: const StepperPersonDetails(),
        ),
        Step(
          title: Text(t(PhraseKey.stepper_overview),
              style: Theme.of(context).textTheme.labelLarge),
          content: Column(
            children: [
              ListTile(
                title: Text(t(PhraseKey.date)),
                //print month and day
                trailing: Text(_selectedEvent?.startDate.toMonthDayString() ??
                    "No date selected"),
              ),
              ListTile(
                title: Text(t(PhraseKey.time)),
                trailing: Text(
                    "${_selectedEvent?.startDate.toTimeOfDay().format(context)} - ${_selectedEvent?.endDate.toTimeOfDay().format(context)}"),
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
