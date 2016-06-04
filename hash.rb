#regular old hash, inspired by Neko Atsume
kitty_hash = {
	"Sunny" => "calico", 
	"Pickles" => "grey and white tabby", 
	"Smokey" => "solid black", 
	"Socks" => "black with white mitts", 
	"Spud" => "red tortoiseshell", 
	"Breezy" => "brown and white tabby"
}

#refactored hash using symbols
#cat1 = {:name => "Sunny", :coloring => "calico"}, 
#cat2 = {:name => "Pickles", :coloring => "grey and white tabby"}, 
#cat3 = {:name => "Smokey", :coloring => "solid black"}, 
#cat4 = {:name => "Socks", :coloring => "black with white mitts"},
#cat5 = {:name => "Spud", :coloring => "red tortoiseshell"},
#cat6 = {:name => "Breezy", :coloring => "brown and white tabby"}

#memento_giver = cat3[:name]
#puts "#{memento_giver} has given you a memento!"

#finally, refactored without =>
cat1 = {name: "Sunny", coloring: "calico"}, 
cat2 = {name: "Pickles", coloring: "grey and white tabby"}, 
cat3 = {name: "Smokey", coloring: "solid black"}, 
cat4 = {name: "Socks", coloring: "black with white mitts"},
cat5 = {name: "Spud", coloring: "red tortoiseshell"},
cat6 = {name: "Breezy", coloring: "brown and white tabby"}

memento_giver = cat3[:name]
puts "#{memento_giver} has given you a memento!"