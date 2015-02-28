animals = {
	"cat" => "feline",
	"dog" => "canine",
	"human" => "homo sapien",
	"mouse" => "scary",
	"platypus" => "what?"
}

animals.each do |animal, reaction|
	puts animal + " is " + reaction
end

puts "-" * 20
puts "\n" * 3
puts "-" * 20
puts "Repeat!\n"

sym_animals = {
	cat: :feline,
	dog: :canine,
	human: :homo_sapien,
	mouse: :scary,
	platypus: :what?
}

sym_animals.each do |key, value|
	puts key
	puts value
end