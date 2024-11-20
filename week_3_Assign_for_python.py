def calculate_discount(price, discount_percent):
    """
    Calculates the final price after applying a discount.
    If the discount is 20% or higher, apply the discount; otherwise, return the original price.
    """
    if discount_percent >= 20:
        discount_amount = (discount_percent / 100) * price
        final_price = price - discount_amount
        return final_price
    else:
        return price

# Prompt the user for input
try:
    original_price = input("Enter the original price of the item: ")
    discount_percentage = input("Enter the discount percentage: ")
    
    # Convert inputs to float for calculations
    final_price = calculate_discount(float(original_price), float(discount_percentage))
    
    # Display the results
    if float(discount_percentage) >= 20:
        print(f"The final price after applying the discount is: ${final_price:.2f}")
    else:
        print(f"No discount applied. The original price is: ${original_price}")
except ValueError:
    print("Please enter valid numerical values for the price and discount percentage.")

