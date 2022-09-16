//  GestureDetector(
//                       onTap: () {
//                         context.read<NumberChange>().decreament();
//                       },
//                       child: Icon(
//                         Icons.remove,
//                         size: 20,
//                         color: ColorConstant.lightPink3,
//                       ),
//                     ),
//                     Text(
//                       '${context.watch<NumberChange>().getNum}.',
//                       style: TextStyle(
//                           color: ColorConstant.lightPink3,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         context.read<NumberChange>().increament();
//                       },
//                       child: Icon(
//                         Icons.add,
//                         size: 20,
//                         color: ColorConstant.lightPink3,
//                       ),
//                     ),