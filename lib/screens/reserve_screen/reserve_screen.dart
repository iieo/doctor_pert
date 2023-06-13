import 'package:doctor_pert/models/calendar_event.dart';
import 'package:doctor_pert/models/dummy_data.dart';
import 'package:doctor_pert/models/medical_practice/medical_practice.dart';
import 'package:doctor_pert/models/person.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/StepperControls.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/person_details.dart';
import 'package:doctor_pert/util.dart';
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
  int _currentMaxStep = 0;
  final int _maxStep = 2;

  final Employee _selectedEmployee = practice1.employees[0];
  final MedicalPractice practice = practice1;

  CalendarAppointmentEvent? _selectedEvent;
  Person _patient = Person.empty();

  void setSelectedEvent(CalendarAppointmentEvent event) {
    _selectedEvent = event;
  }

  void setPersonFirstName(String name) {
    _patient.firstName = name;
  }

  void setPersonLastName(String name) {
    _patient.lastName = name;
  }

  void setPersonEmail(String email) {
    _patient.email = email;
  }

  void setPersonPhone(String phone) {
    _patient.phone = phone;
  }

  void _reserveAppointment(
      CalendarAppointmentEvent event, Person patient) async {
    /*  final bool success = await DummyData.reserveAppointment(event, patient);
    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(t(PhraseKey.appointment_reserved)),
          duration: const Duration(seconds: 1)));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(t(PhraseKey.appointment_reserved)),
          duration: const Duration(seconds: 1)));
    }*/
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
          if (_currentStep == 2) {
            _reserveAppointment(_selectedEvent!, _patient);
          }
          if (_currentStep == 0 && _selectedEvent == null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(t(PhraseKey.no_entry)),
                duration: const Duration(seconds: 1)));
            return;
          }
          if (_currentStep == 1 &&
              (_patient.name.isEmpty ||
                  _patient.email.isEmpty ||
                  _patient.phone.isEmpty)) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(t(PhraseKey.openingHours)),
                duration: const Duration(seconds: 1)));
            return;
          }
          setState(() {
            _currentStep++;
            _currentMaxStep = _currentStep;
          });
        }
      },
      onStepTapped: (index) {
        if (index <= _currentMaxStep) {
          setState(() {
            _currentStep = index;
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(t(PhraseKey.no_entry)),
              duration: const Duration(seconds: 1)));
        }
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
          content: StepperPersonDetails(
            onFirstNameChanged: setPersonFirstName,
            onLastNameChanged: setPersonLastName,
            onEmailChanged: setPersonEmail,
            onPhoneChanged: setPersonPhone,
          ),
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
