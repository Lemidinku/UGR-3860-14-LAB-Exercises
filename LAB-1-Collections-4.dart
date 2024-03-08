// Exercise 4: Write a program that simulates a shopping cart using a list or map.
//  Add items (products with names and quantities) to the cart,
// calculate the total price, and remove items if needed.

void main() {
  // price of items in the shop
  Map<String, int> prices = {
    'Milk': 45,
    'Bread': 20,
    'Eggs': 10,
    'Apples': 30,
    'Bananas': 15,
    "Butter": 50
  };

  Map<String, int> shoppingCart = {
    'Milk': 2,
    'Bread': 3,
    'Eggs': 12,
    'Apples': 5,
    'Bananas': 4,
  };

  print('Original shopping cart: $shoppingCart');

  shoppingCart.putIfAbsent('Butter', () => 1);
  print('Added a new item: $shoppingCart');

  shoppingCart.remove('Eggs');
  print('Removed an item: $shoppingCart');

  int totalPrice = 0;
  shoppingCart.forEach((product, quantity) {
    totalPrice += prices[product]! * quantity;
  });

  print('Total price: $totalPrice');
}
