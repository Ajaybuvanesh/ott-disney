import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {


  Uint8List? _image;
  File? selectedIMage;

  get homePageHeading => null;



//Gallery
  String? imgPath;
  File? imgFile;

  void getImg() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if( pickedImage != null )
    {
      saveData(pickedImage.path.toString());   // path cache
      setState(()
      {
        imgFile = File(pickedImage.path);
      });
    }
  }

  Future<void> saveData(String val)  async {
    SharedPreferences preferences= await SharedPreferences.getInstance();
    preferences.setString('path', val);
    getData();
  }

  void getData() async {
    SharedPreferences preferences= await SharedPreferences.getInstance();
    setState(()
    {
      imgPath = preferences.getString('path');
    });
  }
  @override
  void initState() {
    super.initState();
    getData();
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.grey,
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                     getImg();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text("Gallery",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        getImg();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text("Camera",
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF090830),
        body: Container(
          height: MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*1,
          decoration: const BoxDecoration(

          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                        radius: 60,
                        backgroundImage: MemoryImage(_image!))
                        : const CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          "https://t4.ftcdn.net/jpg/00/65/77/27/360_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg"),
                    ),
                    Positioned(
                        bottom: -10,
                        left: 80,
                        child: IconButton(
                            onPressed: () {
                              showImagePickerOption(context);
                            },
                            icon: const Icon(Icons.add_a_photo,
                              color: Colors.white70,
                              size: 30,
                            )))
                  ],
                ),
                Text("Ajay buvanesh",
                  style: homePageHeading,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      leading: Icon(Icons.settings_outlined, color:Colors.white70,),

                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70),
                    ),
                    InkWell(

                      child: ListTile(
                        leading: Icon(Icons.language_outlined, color:Colors.white70),

                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70,),
                      ),
                    ),
                    InkWell(

                      child: ListTile(
                        leading: Icon(Icons.music_note, color:Colors.white70),

                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70,),
                      ),
                    ),
                    InkWell(

                      child: ListTile(
                        leading: Icon(Icons.multitrack_audio, color:Colors.white70),

                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70,),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications_active, color:Colors.white70),

                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70,),
                    ),
                    ListTile(
                      leading: Icon(Icons.privacy_tip_outlined, color:Colors.white70),

                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70),
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline_sharp, color:Colors.white70),

                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70),
                    ),
                    InkWell(

                      child: ListTile(
                        leading: Icon(Icons.info_outline, color:Colors.white70),

                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white70),
                      ),
                    ),
                    InkWell(

                      child: ListTile(
                        leading: Icon(Icons.logout_outlined, color:Colors.white70,

                        ),
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
