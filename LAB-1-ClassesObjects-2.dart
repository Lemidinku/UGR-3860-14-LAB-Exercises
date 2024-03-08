// Exercise 2: Design a Product class with properties like name, price, and quantity.
//Implement a method to calculate the total cost of a product (price * quantity).

class Product {
  String name;
  double price;
  int quantity;

  // Constructor
  Product(this.name, this.price, this.quantity);

  // Method to calculate total cost
  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a product object
  Product product = Product("Book", 100, 2);

  // Calculate and print total cost
  double totalCost = product.calculateTotalCost();
  print("Total cost of ${product.name}: \$${totalCost.toStringAsFixed(2)}");
}
