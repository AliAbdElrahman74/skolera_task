# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { number: '+12345678910',  enabled: true },
  { number: '+441915556666', enabled: true, nickname: "UK number" },
  { number: '+14155556666',  enabled: false }
].each do |params|
  number = params.delete(:number)
  PhoneNumber.find_or_create_by(number: number) do |number|
    number.enabled = params[:enabled]
    number.nickname = params[:nickname]
  end
end
