import 'package:flutter/material.dart';

class Mybutton2 extends StatefulWidget {
  final Function()? onTap;
  final String text;

  const Mybutton2({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  State<Mybutton2> createState() => _Mybutton2State();
}

class _Mybutton2State extends State<Mybutton2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        //margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color(0xFF051663),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// class MyButton extends StatelessWidget {
//   final Function()? onTap;
//   final String text;
//   const MyButton({
//     super.key,
//     required this.onTap,
//     required this.text,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.all(25),
//         margin: EdgeInsets.symmetric(horizontal: 25),
//         decoration: BoxDecoration(
//           color: Theme.of(context).colorScheme.secondary,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16,
//               color: Theme.of(context).colorScheme.inversePrimary,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
