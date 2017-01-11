pet = {
    dog: {
        name: 'Doug',
        animal_info: {
            age: 6,
            breed: 'chihuahua'
        },
        favorite_food: [
            "Pizza", 
            "Peanut Butter"
        ]
    },
    cat: {
        name: 'Paws',
        animal_info: {
            age: 12,
            breed: 'siamese'
        },
        favorite_food: [
            "Fish", 
            "Watermelon"
        ]
    },
    bird: {
        name: 'Hedwig',
        animal_info: {
            age: 3,
            breed: 'parrot'
        },
        favorite_food: [
        	"Corn"
        ]
    }
}

puts pet[:cat][:favorite_food][1]
puts pet[:bird][:animal_info][:age]
puts pet[:dog][:animal_info][:breed].upcase