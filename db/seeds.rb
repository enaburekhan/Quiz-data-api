# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'eric@gmail.com', password: 'eric123')

QuizDatum.create(founder_name: 'Oluwatoyin', email: 'toyin@gmail.com', country: 'nigeria',
                                gender: 'female', race_of_founder: 'black',
                                text_box: 'other credentials include vegan, etc',
                                conscious_beauty_credentials: 'sulphate_free', user_id: 1)
