import 'package:doctor_pert/models/doctor.dart';
import 'package:doctor_pert/screens/search_screen/components/doctor_card.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/overview.dart';
import 'package:flutter/material.dart';

class AnimatedOverview extends StatefulWidget {
  final List<Doctor> doctors;
  final Function(int) setIndex;
  final int selectedIndex;
  const AnimatedOverview({
    super.key,
    required this.doctors,
    required this.setIndex,
    required this.selectedIndex,
  });

  @override
  State<AnimatedOverview> createState() => _AnimatedOverviewState();
}

class _AnimatedOverviewState extends State<AnimatedOverview>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 150), vsync: this);
    _scaleAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
  }

  void _toggleAnimation() {
    if (_animationController.isCompleted) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
              _toggleAnimation();
            },
            doctor: widget.doctors[index],
          );
        },
      ),
      AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Transform.scale(
                scaleY: _scaleAnimation.value,
                child: Opacity(
                  opacity: _fadeAnimation.value,
                  child: child,
                ));
          },
          child: DoctorOverview(
            onPressed: _toggleAnimation,
            doctor: widget.selectedIndex < 0
                ? null
                : widget.doctors[widget.selectedIndex],
          ))
    ]);
  }
}
