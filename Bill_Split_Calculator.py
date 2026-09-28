print("Bill Split Calculator")

bill_amount = float(input()) # Bill amount from user input
tip_percentage = float(input()) # Tip percentage from user input
tip_amount = (tip_percentage / 100) * bill_amount # Calculating tip amount
total_amount = tip_amount + bill_amount # Calculating total amount
print(f"Total (including tip): ${total_amount}")

num_people = int(input())
amount_per_person = total_amount / num_people # Calculating amount per person
print(f"Each person pays: ${amount_per_person}")
