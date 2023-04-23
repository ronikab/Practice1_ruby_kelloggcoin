# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

# puts blockchain[1]
# puts blockchain[4]["from_user"]


names =["ben", "brian", "evan", "anthony"]
# p names

# all for ben:
# wallet_ben=[
#   blockchain[0]["amount"]+
#   blockchain[6]["amount"]-
#   blockchain[2]["amount"]-
#   blockchain[5]["amount"]
# ]
# puts wallet_ben

# p blockchain[2]["amount"] if blockchain[2]["from_user"]== "ben"
# p blockchain[2]["amount"] if blockchain[2]["from_user"]== "#{names[0]}"

# txn = 2 ## from
# name = 0 ## ben

# wallet= []
# amount = blockchain[txn]["amount"] if blockchain[txn]["from_user"]== "ben"
# wallet.push(amount)
# puts wallet

ben_wallet=0
for txn in blockchain
  if txn["to_user"]== "ben"
     ben_wallet = ben_wallet + txn["amount"] 
  else 0
  end
  if txn["from_user"] == "ben"
    ben_wallet = ben_wallet - txn["amount"]
  end
end
# p ben_wallet


brian_wallet=0
for txn in blockchain
  if txn["to_user"]== "brian"
     brian_wallet = brian_wallet + txn["amount"] 
  else 0
  end
  if txn["from_user"] == "brian"
    brian_wallet = brian_wallet - txn["amount"]
  end
end
# p brian_wallet

evan_wallet=0
for txn in blockchain
  if txn["to_user"]== "evan"
     evan_wallet = evan_wallet + txn["amount"] 
  else 0
  end
  if txn["from_user"] == "evan"
    evan_wallet = evan_wallet - txn["amount"]
  end
end
# p evan_wallet


anthony_wallet=0
for txn in blockchain
  if txn["to_user"]== "anthony"
     anthony_wallet = anthony_wallet + txn["amount"] 
  else 0
  end
  if txn["from_user"] == "anthony"
    anthony_wallet = anthony_wallet - txn["amount"]
  end
end
# p anthony_wallet



# 

# puts names[0]
puts "#{names[0]}'s KelloggCoin balance is #{ben_wallet}"
puts "#{names[1]}'s KelloggCoin balance is #{brian_wallet}"
puts "#{names[2]} KelloggCoin balance is #{evan_wallet}"
puts "#{names[3]}'s KelloggCoin balance is #{anthony_wallet}"

