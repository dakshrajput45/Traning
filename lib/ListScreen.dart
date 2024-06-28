import 'package:flutter/material.dart';
import 'package:training/modal.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Doctor> doctors = Details()
        .doctors
        .map((doctorMap) => Doctor.fromJson(doctorMap))
        .toList();
    return ListView.builder(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 50),
      // ListDelegate: const SliverListDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 20,
      //   mainAxisSpacing: 50,
      //   childAspectRatio: 0.50,
      // ),
      itemCount: doctors.length,
      itemBuilder: (BuildContext context, int index) {
        Doctor doctor = doctors[index];

        return Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 1),
            )
          ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset:
                          Offset(0, 3), // Changes the position of the shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20), // Ensure the radius matches the container
                  child: Image.network(
                    doctor.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.name!,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      doctor.field!,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      doctor.description!,
                      style: TextStyle(fontSize: 14), // Adjust the font size if necessary
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Details {
  List<Map<String, String>> doctors = [
    {
      'image':
          'https://i.pinimg.com/736x/00/f8/e6/00f8e62a60bba40c1cbc109b2a8c559a.jpg',
      'name': 'Dr. John Smith',
      'field': 'Cardiologist',
      'description':
          'Experienced cardiologist specializing in heart health and cardiovascular diseases.',
    },
    {
      'image':
          'https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg',
      'name': 'Dr. Emily Johnson',
      'field': 'Pediatrician',
      'description':
          'Dedicated pediatrician with a passion for child health and wellness.',
    },
    {
      'image':
          'https://static.vecteezy.com/system/resources/thumbnails/028/287/555/small/an-indian-young-female-doctor-isolated-on-green-ai-generated-photo.jpg',
      'name': 'Dr. Michael Brown',
      'field': 'Dermatologist',
      'description':
          'Expert in skincare, treating a variety of skin conditions and diseases.',
    },
    {
      'image':
          'https://t4.ftcdn.net/jpg/04/85/93/57/360_F_485935742_y0unNRYlyCdG4Ut1gcLtfUg4aRt037WG.jpg',
      'name': 'Dr. Sarah Davis',
      'field': 'Neurologist',
      'description':
          'Specialist in neurology, focusing on the treatment of brain and nervous system disorders.',
    },
    {
      'image':
          'https://us.123rf.com/450wm/rmarmion/rmarmion1803/rmarmion180300421/98836786-nurse-who-is-working-her-shift-in-a-hospital.jpg?ver=6',
      'name': 'Dr. William Garcia',
      'field': 'Orthopedic Surgeon',
      'description':
          'Orthopedic surgeon with expertise in bone and joint surgeries.',
    },
  ];
}
