import 'package:doctor_pert/models/medical_practice.dart';
import 'package:doctor_pert/screens/search_screen/components/doctor_card.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/overview.dart';
import 'package:flutter/material.dart';

class AnimatedOverview extends StatefulWidget {
  final AnimationController animationController;
  final List<MedicalPractice> doctors;
  final Function(int) setIndex;
  final int selectedIndex;
  final Function() toggleAnimation;
  const AnimatedOverview({
    super.key,
    required this.doctors,
    required this.setIndex,
    required this.selectedIndex,
    required this.toggleAnimation,
    required this.animationController,
  });

  @override
  State<AnimatedOverview> createState() => _AnimatedOverviewState();
}

class _AnimatedOverviewState extends State<AnimatedOverview> {
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _scaleAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: widget.animationController, curve: Curves.easeInOut));
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: widget.animationController, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView.builder(
        itemCount: widget.doctors.length,
        itemBuilder: (context, index) {
          return DoctorCard(
            onTap: () {
              widget.setIndex(index);
              widget.toggleAnimation();
            },
            doctor: widget.doctors[index],
          );
        },
      ),
      AnimatedBuilder(
          animation: widget.animationController,
          builder: (context, child) {
            return Transform.scale(
                scaleY: _scaleAnimation.value,
                child: Opacity(
                  opacity: _fadeAnimation.value,
                  child: child,
                ));
          },
          child: DoctorOverview(
            onPressed: widget.toggleAnimation,
            doctor: widget.selectedIndex < 0
                ? null
                : widget.doctors[widget.selectedIndex],
          ))
    ]);
  }
}
