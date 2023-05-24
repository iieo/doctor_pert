import 'package:doctor_pert/models/doctor.dart';
import 'package:doctor_pert/models/dummy_data.dart';
import 'package:doctor_pert/models/person.dart';
import 'package:doctor_pert/models/reservation.dart';
import 'package:doctor_pert/models/worker.dart';
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
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Worker _selectedWorker = doctor1.workers[0];
  Person _patient = person1;

  final int _maxStep = 3;
  Doctor doctor = doctor1;
  List<Reservation> reservations = reservations1;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _currentStep,
      type: StepperType.vertical,
      controlsBuilder: (context, details) {
        return Row(
          children: [
            if (_currentStep == 0)
              TextButton(
                  onPressed: () {},
                  child: Text(t("cancel").toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium)),
            if (_currentStep > 0)
              TextButton(
                  onPressed: details.onStepCancel,
                  child: Text(t("back").toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium)),
            if (_currentStep < _maxStep)
              TextButton(
                  onPressed: details.onStepContinue,
                  child: Text(t("next").toUpperCase(),
                      style: Theme.of(context).textTheme.labelMedium)),
            if (_currentStep == _maxStep)
              TextButton(
                  onPressed: () {},
                  child: Text(t("confirm").toUpperCase(),
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
            title: Text(t("time_table_step"),
                style: Theme.of(context).textTheme.labelLarge),
            content: TimeTable(
                availableAppointments: doctor.availableAppointments,
                reservations: reservations)),
        Step(
          title: Text(t("select_worker_step")),
          content: Column(
            children: <Widget>[
              ListView.builder(
                shrinkWrap: true,
                itemCount: doctor.workers.length,
                itemBuilder: (BuildContext context, int itemIndex) {
                  return ListTile(
                    title: Text(doctor.workers[itemIndex].name,
                        style: Theme.of(context).textTheme.labelLarge),
                  );
                },
              ),
            ],
          ),
        ),
        Step(
          title: Text(t("personal_data_step"),
              style: Theme.of(context).textTheme.labelLarge),
          content: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: t("first_name"), hintText: t("first_name_hint")),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: t("last_name"), hintText: t("last_name_hint")),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: t("phone"), hintText: t("phone_hint")),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: t("email"), hintText: t("email_hint")),
              ),
            ],
          ),
        ),
        Step(
          title: Text(t("reservation_overview_step"),
              style: Theme.of(context).textTheme.labelLarge),
          content: Column(
            children: [
              ListTile(
                title: Text(t("date")),
                trailing: Text(_selectedDate.toString()),
              ),
              ListTile(
                title: Text(t("time")),
                trailing: Text(_selectedTime.toString()),
              ),
              const Divider(),
              ListTile(
                title: Text(t("doctor")),
                trailing: Text(doctor.name),
              ),
              ListTile(
                title: Text(t("worker")),
                trailing: Text(_selectedWorker.name),
              ),
              const Divider(),
              ListTile(
                title: Text(t("patient")),
                trailing: Text(_patient.name),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
