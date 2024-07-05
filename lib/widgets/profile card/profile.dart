import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PopupWidget extends StatefulWidget {
  const PopupWidget({super.key});

  @override
  State<PopupWidget> createState() => _PopupWidgetState();
}

class _PopupWidgetState extends State<PopupWidget> {
  int _currentStep = 0;
  final List<String> _steps = [
    'Change Current Status',
    'Postponed',
    'Pickup Pending',
    'Client Arrived at the Airport',
    'Task assigned to you',
    'Service Requested by the client'
  ];

  String? _selectedStatus;

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select an Option'),
          content: Container(
            width: double.maxFinite,
            child: Stepper(
              currentStep: _currentStep,
              onStepContinue: () {
                setState(() {
                  if (_currentStep < _steps.length - 1) {
                    _currentStep++;
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (_currentStep > 0) {
                    _currentStep--;
                  }
                });
              },
              onStepTapped: (int index) {
                setState(() {
                  _currentStep = index;
                });
              },
              steps: _steps
                  .map(
                    (status) => Step(
                      title: Text(status),
                      isActive: _currentStep >= _steps.indexOf(status),
                      state: StepState.complete,
                      content: SizedBox.shrink(),
                    ),
                  )
                  .toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Close'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedStatus = _steps[_currentStep];
                });
                Navigator.of(context).pop(); // Close the dialog
                _showSelectedStatus(context);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _showSelectedStatus(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Selected Status'),
          content: Text(_selectedStatus ?? 'No status selected'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromARGB(81, 178, 255, 89),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'You are currently on the way to Pickup this client',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  _showPopup(context);
                  if (kDebugMode) {
                    print('Change status button pressed');
                  }
                },
                child: const Text('Change Status'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
