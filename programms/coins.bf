,[                       Read input for amount of money
  >++++[-<+++++++++++>] Set up a counter for quarters (25 cents)
  >+[-<+>]              Set up a counter for dimes (10 cents)
  >+++++[-<+++++>]     Set up a counter for nickels (5 cents)
  >++++[-<++++>]       Set up a counter for pennies (1 cent)

  # Main loop to calculate the number of coins needed
  # Assumes input is in cents

  # Calculate quarters
  [                       Loop until the counter for quarters (25 cents) is zero
    -                       Decrement the counter for quarters
    >                       Move to the counter for dimes (10 cents)
    ++++++[-<+++++>]       Increment the counter for dimes
    >                       Move to the counter for nickels (5 cents)
    +++++[-<++++>]         Increment the counter for nickels
    >                       Move to the counter for pennies (1 cent)
    +++++[-<++++>]         Increment the counter for pennies
    <<<<[-]                 Reset the counter for quarters
  ]

  # Calculate dimes
  [                       Loop until the counter for dimes (10 cents) is zero
    -                       Decrement the counter for dimes
    >                       Move to the counter for nickels (5 cents)
    +++++[-<++++>]         Increment the counter for nickels
    >                       Move to the counter for pennies (1 cent)
    +++++[-<++++>]         Increment the counter for pennies
    <<<<[-]                 Reset the counter for dimes
  ]

  # Calculate nickels
  [                       Loop until the counter for nickels (5 cents) is zero
    -                       Decrement the counter for nickels
    >                       Move to the counter for pennies (1 cent)
    +++++[-<++++>]         Increment the counter for pennies
    <<[-]                   Reset the counter for nickels
  ]

  # Print the number of coins needed
  >[.>]                   Print the counter for quarters
  <<<<++++++[-<++++++++>] Print the counter for dimes
  <<<<<+++++[-<+++++>]   Print the counter for nickels
  <<<<++++[-<++++>]     Print the counter for pennies
]

