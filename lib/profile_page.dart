import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset:true,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("My Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(
                height: _size.height * 0.4,
                width: double.infinity,
                child:  Center(
                  child: Stack(
                    children:[
                      const CircleAvatar(
                        radius: 100,
                        backgroundColor:   Color(0xff0091BE),
                        backgroundImage: NetworkImage("https://skans.pk/wp-content/uploads/2020/03/1.png"),
                      ),
                       Positioned(
                            bottom: 15,
                            right: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                child:IconButton(onPressed: (){}, icon: const Icon( Icons.edit,color: Colors.white,),),),
                      ),
                    ]
                  ),
                ),
              ),
              Form(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  children:
                [
                 Row(
                   children: [
                     Expanded(
                       child: TextFormField(

                          decoration: const InputDecoration(
                            hintText: "First Name"
                          ),

                       ),
                     ),
                     const SizedBox(
                       width: 30,
                     ),
                     Expanded(
                       child: TextFormField(
                         decoration: const InputDecoration(
                             hintText: "Last Name"
                         ),
                       ),
                     ),
                   ],
                 ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Email"
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "National ID"
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Phone Number"
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Address"
                    ),
                  ),
                ],),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
