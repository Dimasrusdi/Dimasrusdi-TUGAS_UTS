import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projekuts/pages/menu.dart';


class LoginMenu extends StatelessWidget {
  const LoginMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 470,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xffDB9713)),
          ),
          SafeArea(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Your Future',
                  style:GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'FURNITURE',
                  style : GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 4,
                  width: 130,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
              ),
              
              const SizedBox(
                height: 110,
              ),
              Center(
                child: Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(12), boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3))
                  ]),
                  padding: const EdgeInsets.all(28),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Login First',
                        style : GoogleFonts.inter(
                            color: Color(0xffDB9713),
                            fontSize: 26,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            labelText: 'Username',
                            prefixIcon: Icon(Icons.person)),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const MenuPages()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(color: Color(0xffDB9713),
                    borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Login',
                        style : GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                            
                      ),
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}