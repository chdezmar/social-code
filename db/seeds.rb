# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

languages = ["Bash", "C", "CSS", "Delphi", "Go", "HTML", "Java", "JavaScript", "Perl",
            "PHP", "Python", "R", "Ruby", "Scala", "Swift", "SQL", "TypeScript", "Visual Basic"]

languages.each do |l|
  Language.create(language_type: l)
end
