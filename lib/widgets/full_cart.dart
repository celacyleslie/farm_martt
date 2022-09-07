import 'package:flutter/material.dart';

class FullCart extends StatefulWidget {
  const FullCart({Key? key}) : super(key: key);

  @override
  _FullCartState createState() => _FullCartState();
}

class _FullCartState extends State<FullCart> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(
              width: 2,
              color: Colors.grey
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Row(children: [
          Container(
            width: 100,
            height: 250,
            child: Image.asset("assets/images/peps.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10,),
          Flexible(child: Column(
            children: [
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text("AkoFresh Pepper",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: (){},
                      child: const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 7,),

              Row(
                children: [
                  const Text("Price : ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Flexible(child: Text("\$100.00",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  )
                ],
              ),
              Row(
                children: [
                  const Text("Subtotal : ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Flexible(child: Text("\$100.00",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  )
                ],
              ),
              Row(
                children: [
                  const Text("Shipping : ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Flexible(child: Text("\$100.00",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){}, child: Text("-",
                    style: TextStyle(fontSize: 25),
                  ),
                  ),
                  Text("1",style: TextStyle(fontSize: 20),
                  ),
                  TextButton(onPressed: (){}, child: Text("+",
                    style: TextStyle(fontSize: 25),
                  ),
                  ),
                ],
              )
            ],
          ),)
        ],
        ),
      ),
    );
  }
}
