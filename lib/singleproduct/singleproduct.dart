import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:meatshopproj/modals/singleproductmodal.dart';

import '../api.dart';
import 'Bottombar.dart';
import 'singleproductgrid.dart';

class Singleproduct extends StatefulWidget {
  final id;
  const Singleproduct({super.key, this.id});

  @override
  State<Singleproduct> createState() => _SingleproductState();
}
// ValueNotifier<List<Singledata>> singleproNotifier = ValueNotifier([]);

class _SingleproductState extends State<Singleproduct> {
  var uid = "";

  String? singleproname;
  String? singleproimg;
  String? singlprodesc;
  String? singleproprice;

  @override
  void initState() {
    super.initState();
    setState(() {
      singleproUser();
    });
  }

  var kgcount = 0;
  var gmcount = 0;
  var dropdownvalue = "Select";
  get kg => kgcount;
  get gm => gmcount;
  get pricereq => "$kg.$gm";
  get t => int.parse(singleproprice != null? singleproprice.toString():'0');
  get p => double.parse(pricereq);
  get  total =>  p * t;

  var cuts = [
    'Half',
    'Full',
    'Quarter',
  ];
  var iccolor = const Color.fromARGB(255, 246, 242, 242);
  @override
  Widget build(BuildContext context) {
    getval();
    return Scaffold(
      appBar: AppBar(
        title: Text(singleproname.toString()),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    color: const Color.fromARGB(255, 239, 236, 236),
                    child: Column(
                      children: [
                        Container(
                          height: 230,
                          decoration: BoxDecoration(
                              color: Colors.white10,
                              image: DecorationImage(
                                  image: NetworkImage(singleproimg.toString()),
                                  fit: BoxFit.fill)),
                        ),

                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 156, 143, 143),
                                    blurRadius: 3),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 20, right: 20),
                            child: Text(
                              singleproname.toString(),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 156, 143, 143),
                                    blurRadius: 3),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: [
                                const Text("Choose your cut"),
                                const Spacer(),
                                Text(dropdownvalue),
                                DropdownButton(
                                  // value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: cuts.map((String cuts) {
                                    return DropdownMenuItem(
                                      value: cuts,
                                      child: Text(cuts),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 156, 143, 143),
                                      blurRadius: 3),
                                ]),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 20, top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Request your quantity"),
                                    Row(
                                      children: [
                                        const Text("whole: 180/500gm"),
                                        const Spacer(),
                                        Text("\$ $singleproprice")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        const Text(
                                          "Kilogram",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (kgcount != 0) {
                                                    kgcount--;
                                                  }
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.remove_circle_outline,
                                                size: 35,
                                              ),
                                            ),
                                            Text(
                                              "$kgcount",
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    kgcount++;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.add_circle_outline,
                                                  size: 35,
                                                ))
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        const Text(
                                          "Gram",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (gmcount != 0) {
                                                    gmcount = gmcount - 1;
                                                  }
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.remove_circle_outline,
                                                size: 35,
                                              ),
                                            ),
                                            Text(
                                              "$gmcount",
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    gmcount = gmcount + 1;
                                                  });
                                                },
                                                icon: const Icon(
                                                  Icons.add_circle_outline,
                                                  size: 35,
                                                ))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                        const SizedBox(
                          height: 10,
                        ),

                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 156, 143, 143),
                                    blurRadius: 3),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20, bottom: 10),
                            child: Row(
                              children: [
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Price Summary",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text("Whole product price"),
                                    Text("Whole product required"),
                                    Text("Wastage"),
                                    Text("Final weight"),
                                    Text("Delivery charge :"),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 20,
                                      ),
                                      child: Text(
                                        "Final price",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Text("   "),
                                    ),
                                    Text("$singleproprice /kg"),
                                    Text("$pricereq kg"),
                                    const Text(".27 kg"),
                                    const Text(".57 kg"),
                                    const Text(
                                      ".FREE",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 10),
                                      child: Text(
                                        "$pricereq x $singleproprice = $total",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 156, 143, 143),
                                    blurRadius: 3),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Text(
                                    "Description",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(singlprodesc.toString())
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 470,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, bottom: 20, top: 30),
                                  child: Text("Similiar Products"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  // ignore: sized_box_for_whitespace
                                  child: Container(
                                      height: 400,
                                      child: const SingleProductgrids()),
                                ),
                              ],
                            )),
                        // TextButton(onPressed: (){

                        // },
                        // // child: const Text("View more",
                        // style: TextStyle(color: Colors.blue),))
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Bottombar(iccolor: iccolor)
          ],
        ),
      ),
    );
  }

  void singleproUser() async {
    //  const prodid = "213";
    //  const userid ="565";
    const key =
        "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";

    final formData =
        FormData.fromMap({'product_id': widget.id, 'user_id': uid, 'key': key});
    final result = await Api().singleproductUserApi(formData);

    if (result != null) {
      if (result.status == "success") {
        setState(() {
          print("$uid");
          print("${widget.id}");

          singleproname = result.data.name;
          singleproimg = result.data.images[0];
          singleproprice = result.data.wholePrice;
          singlprodesc = result.data.description;
        });
      }
    }
  }

  void getval() async {
    SharedPreferences share = await SharedPreferences.getInstance();
    uid = share.getString("userid")!;
    //  pid = share.getString("product")!;
  }
}
