library = {
  wing_one: {
    category: "Exploratory",
    reading_level: 'Intermediate/Advanced',
      index: {
        catalogue: ['19th Century', 'Shakespeare', 'Poetry', 'Literary Classics'],
        number_of_books: 433,
        manager: 'Bob'
      },
    },
  wing_two: {
    category: 'Leisure',
    reading_level: 'Beginner/Intermediate',
      index: {
        catalogue: ['Teen', 'Mystery', 'Fantasy', 'Pop-Culture'],
        number_of_books: 257,
        manager: 'Lisa'
      },
    },
  wing_three: {
    category: 'Educational',
    reading_level: 'Advanced',
    index: {
      catalogue: ['Mathematics', 'Computer Science', 'Engineering', 'Modern Medicine'],
      number_of_books: 199,
      manager: 'Deb'
    },
  },

  wing_four: {
    category: 'Children',
    reading_level: 'Beginner',
    index: {
      catalogue: ['Coloring Books', 'Learn to read', "Children's Classics"],
      number_of_books: 212,
      manager: 'Gary'
    },
  },

  wing_five: {
    category: 'Sport',
    reading_level: 'Intermediate',
    index: {
      catalogue: ['Hockey', 'Football', 'Basketball', 'Baseball', 'Futbol'],
      number_of_books: 65,
      manager: 'Jesse'
    },
  }
}

p library[:wing_four][:index][:number_of_books]
p library[:wing_two][:index][:catalogue][3]
p library[:wing_five][:category]
p library[:wing_one][:index][:catalogue][1]
p library[:wing_three][:index][:manager]
p library[:wing_three][:index][:catalogue][0..2]
p library[:wing_one][:reading_level]
p library[:wing_four][:index][:catalogue].push("Shel Silverstein")


