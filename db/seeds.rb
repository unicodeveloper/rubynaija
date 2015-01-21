# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create( name: 'RUBYNAIJA', url: 'http://rubynaija.com', description: 'A repository for Projects developed by Nigerian Ruby Developers', categories: 'Portfolio', email: 'info@rubynaija.com', tags:'Rails 4')