void main() {
  // Sample item prices in the cart
  List<double> prices = [12.99, 8.5, 15.0, 25.0, 3.75, 6.54];

  // 1. Filter out items under $10 using an anonymous function
  List<double> filteredPrices = prices.where((price) => price >= 10).toList();
  print("Filtered prices (>= \$10): $filteredPrices");

  // 2. Apply a discount of 10% on each item using the applyDiscount function
  double discountPercentage = 10.0;
  List<double> discountedPrices = applyDiscount(filteredPrices, (price) => price * (1 - discountPercentage / 100));
  print("Prices after discount: $discountedPrices");

  // 3. Calculate total price with optional tax (e.g., 5% tax)
  double taxRate = 5.0;
  double total = calculateTotal(discountedPrices, tax: taxRate);
  print("Total price after tax: \$${total.toStringAsFixed(2)}");

  // 4. Calculate factorial discount based on the number of items
  int itemCount = discountedPrices.length;
  double factorialDiscountPercentage = calculateFactorialDiscount(itemCount);
  print("Factorial discount (based on $itemCount items): $factorialDiscountPercentage%");

  // 5. Apply the factorial discount to the final total price
  double finalPrice = total * (1 - factorialDiscountPercentage / 100);
  print("Final price after factorial discount: \$${finalPrice.toStringAsFixed(2)}");
}

// Standard Function: Calculate total price with optional tax
double calculateTotal(List<double> prices, {double tax = 0.0}) {
  double subtotal = prices.fold(0, (sum, price) => sum + price);
  return subtotal * (1 + tax / 100);
}

// Higher-Order Function: Apply a discount to each item in the list
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  return prices.map((price) => discountFunction(price)).toList();
}

// Recursive Function: Calculate a discount based on the factorial of the number of items
double calculateFactorialDiscount(int n) {
  if (n <= 1) return 1; // Base case
  return n * calculateFactorialDiscount(n - 1); // Recursive case
}
