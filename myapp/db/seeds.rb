# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
Project.delete_all
Todo.delete_all
FILE = HashWithIndifferentAccess.new(YAML.load(File.read(File.expand_path('C:/app/myapp/db/seeds/seeds.yml', __FILE__))))
FILE.each do |key, values|
Project.create values
Todo.crate values




end
