import 'package:flutter/material.dart';
import 'package:project_bailey/widgets/button.dart';
import 'package:project_bailey/widgets/labeled_textfield.dart';
import 'package:intl/intl.dart';
import 'package:project_bailey/widgets/modal_listview_item.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  TextEditingController dateInput = TextEditingController();
  TextEditingController province = TextEditingController();

  var provinces = [];

  onSelectProvince(String province) {
    // print(province);
    // Navigator.pop(context);
    return setState(() {
      // this.province.text = province;
    });
  }

  @override
  void initState() {
    dateInput.text = "";
    province.text = "";

    provinces.addAll([
      ModalListViewItem(text: 'Abra', onTap: onSelectProvince('Abra')),
      ModalListViewItem(text: 'Bohol', onTap: onSelectProvince('Bohol')),
      ModalListViewItem(text: 'Cebu', onTap: onSelectProvince('Cebu')),
      ModalListViewItem(text: 'Pampanga', onTap: onSelectProvince('Pampanga')),
      ModalListViewItem(text: 'Sulu', onTap: onSelectProvince('Sulu')),
    ]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.chevron_left, color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Text(
                'Personal Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 15, right: 5),
                    child: LabeledTextField(
                      label: 'First Name',
                      inputDecoration: InputDecoration(
                        hintText: 'First Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 5, bottom: 15, right: 10),
                    child: LabeledTextField(
                      label: 'Last Name',
                      inputDecoration: InputDecoration(
                        hintText: 'Last Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 15, right: 10),
              child: LabeledTextField(
                label: 'Birthday',
                readOnly: true,
                controller: dateInput,
                // onTap: () async {
                //   DateTime? pickedDate = await showDatePicker(
                //       context: context,
                //       initialDate: DateTime.now(),
                //       firstDate: DateTime(1900),
                //       lastDate: DateTime.now());

                //   if (pickedDate != null) {
                //     String formattedDate =
                //         DateFormat('yMMMMd').format(pickedDate);
                //     return setState(() {
                //       dateInput.text = formattedDate;
                //     });
                //   }
                // },
                inputDecoration: InputDecoration(
                  hintText: 'Birthday',
                  suffixIcon: const Icon(Icons.calendar_month),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
              child: LabeledTextField(
                label: 'Address',
                controller: province,
                readOnly: true,
                // onTap: () => {
                //   showModalBottomSheet(
                //     context: context,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     builder: (BuildContext context) {
                //       return Container(
                //         height: 330,
                //         decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.circular(30)),
                //         child: Column(
                //           // mainAxisAlignment: MainAxisAlignment.center,
                //           // mainAxisSize: MainAxisSize.min,
                //           children: [
                //             const Padding(
                //               padding: EdgeInsets.symmetric(vertical: 20),
                //               child: Center(
                //                 child: Text(
                //                   'Province',
                //                   style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 17,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //             Expanded(
                //               child: ListView(
                //                 scrollDirection: Axis.vertical,
                //                 shrinkWrap: true,
                //                 children: [...provinces],
                //               ),
                //             )
                //           ],
                //         ),
                //       );
                //     },
                //   )
                // },
                inputDecoration: InputDecoration(
                  hintText: 'Address',
                  suffixIcon: const Icon(Icons.arrow_drop_down),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Row(children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, bottom: 15, right: 5),
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.arrow_drop_down),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 5, bottom: 15, right: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.arrow_drop_down),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: LabeledTextField(
                label: 'Account Type',
                inputDecoration: InputDecoration(
                  hintText: 'Family (up to 5 members)',
                  suffixIcon: const Icon(Icons.arrow_drop_down),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 60),
              child: Button(text: 'Next'),
            )
          ],
        ),
      ),
    );
  }
}
