import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/components/my_cart_tile.dart';
import 'package:food/models/restaurant.dart';
import 'package:food/pages/payment_page.dart';
import 'package:provider/provider.dart';


class CartPage extends StatelessWidget {
 const CartPage({super.key});


 @override
 Widget build(BuildContext context) {
   return Consumer<Restaurant>(
     builder: (context, restaurant, child) {
       // cart
       final userCart = restaurant.cart;


       //scaffold UI
       return Scaffold(
         appBar: AppBar(
           title: const Text("Cart"),
           backgroundColor: Colors.transparent,
           foregroundColor: Theme.of(context).colorScheme.inversePrimary,
           actions: [
            //clear cart button
            IconButton(
              icon: const Icon(Icons.delete), // Add this line to specify the icon
              onPressed: () { 
              showDialog(
                context: context, 
                builder: (context) => AlertDialog(
                  title: const Text
                  ("Are you sure you want to clear the cart?"),
                  actions: [
                    //cancel button
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Cancel"),
                      ),
                    //yes button
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        restaurant.clearCart();
                      },
                      child: const Text("Yes"),
                      ),
                  ],),
                  );
            },)
           ],
      
         ),
        body: Column(
          children: [
            // list of cart
            Expanded(
              child: Column(
                 children: [
                  userCart.isEmpty? 
                  const Expanded(child: Center(child:
                  Text("Cart is empty"),
                  ),
                  ):
                  
                   Expanded(
                     child: ListView.builder(
                       itemCount: userCart.length,
                       itemBuilder: (context, index) {
                         //get indiviual cart item
                         final cartItem = userCart[index];
              
              
                         //return cart title UI
                         return MyCartTile(cartItem: cartItem);
                       },
                     ),
                   ),
                 ],
               ),
               
            ),
            //button to pay
            MyButton(text: "Go to checkout", 
            onTap: () => Navigator.push(context, 
            MaterialPageRoute(
              builder:(context)=>const PaymentPage(),
               ))
            ),
            const SizedBox(height:25),
          ],
        ),
       );
     },
   );
 }
}
