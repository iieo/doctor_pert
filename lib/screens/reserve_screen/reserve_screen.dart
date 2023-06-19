import 'package:doctor_pert/handler/firestore_handler.dart';
import 'package:doctor_pert/models/employee/employee.dart';
import 'package:doctor_pert/models/medical_practice/medical_practice.dart';
import 'package:doctor_pert/models/person/person.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/stepper_controls.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/person_details.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/stepper_employee.dart';
import 'package:doctor_pert/util.dart';
import 'package:doctor_pert/screens/reserve_screen/stepper_content/time_table.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class ReserveScreenLoader extends StatelessWidget {
  final String practiceId;

  const ReserveScreenLoader({super.key, required this.practiceId});

  Future<MedicalPractice> _loadMedicalPractice() async {
    return await FirestoreHandler.getMedicalPracticeById(practiceId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            MedicalPractice? medicalPractice = snapshot.data;
            if (medicalPractice == null) {
              return Text(t(PhraseKey.practice_not_found));
            }
            return ReserveScreen(medicalPractice: snapshot.data!);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const CircularProgressIndicator();
        },
        future: _loadMedicalPractice());
  }
}

class ReserveScreen extends StatefulWidget {
  final MedicalPractice medicalPractice;
  const ReserveScreen({super.key, required this.medicalPractice});

  @override
  State<ReserveScreen> createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  int _currentStep = 0;
  int _currentMaxStep = 0;
  final int _maxStep = 3;

  DateTime? _selectedTime;
  Person _patient = Person(firstName: "", lastName: "", email: "", phone: "");
  Employee? _selectedEmployee;

  void setSelectedTime(DateTime time) {
    setState(() {
      _selectedTime = time;
    });
  }

  void _reserveAppointment() async {
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
          if (_currentStep == 0 && _selectedTime == null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(t(PhraseKey.no_entry)),
                duration: const Duration(seconds: 1)));
            return;
          }
          if (_currentStep == 1 && (_patient.isValidPerson())) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(t(PhraseKey.openingHours)),
                duration: const Duration(seconds: 1)));
            return;
          }
          if (_currentStep == 2 && _selectedEmployee == null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(t(PhraseKey.no_entry)),
                duration: const Duration(seconds: 1)));
            return;
          }
          if (_currentStep == 3) {
            _reserveAppointment();
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
              practice: widget.medicalPractice,
              onSelected: setSelectedTime,
            )),
        Step(
          title: Text(t(PhraseKey.stepper_person_details),
              style: Theme.of(context).textTheme.labelLarge),
          content: StepperPersonDetails(patient: _patient),
        ),
        Step(
            title: Text(t(PhraseKey.stepper_employee)),
            content: StepperEmployee(
                practice: widget.medicalPractice,
                selectedTime: _selectedTime!)),
        Step(
          title: Text(t(PhraseKey.stepper_overview),
              style: Theme.of(context).textTheme.labelLarge),
          content: Column(
            children: [
              ListTile(
                title: Text(t(PhraseKey.date)),
                //print month and day
                trailing: Text(
                    _selectedTime?.toMonthDayString() ?? "No date selected"),
              ),
              ListTile(
                title: Text(t(PhraseKey.time)),
                trailing:
                    Text("${_selectedTime?.toTimeOfDay().format(context)}"),
              ),
              const Divider(),
              ListTile(
                title: Text(t(PhraseKey.doctor)),
                trailing: Text(widget.medicalPractice.name),
              ),
              ListTile(
                title: Text(t(PhraseKey.employee)),
                trailing: Text("TODO select employee"),
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
