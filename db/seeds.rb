# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  { number: '+12345678910',  enabled: true, nickname: "US number" },
  { number: '+441915556666', enabled: true, nickname: "UK number" },
  { number: '+353831112222',  enabled: false, nickname: "IE number" }
].each do |params|
  number = params.delete(:number)
  PhoneNumber.find_or_create_by(number: number) do |number|
    number.enabled  = params[:enabled]
    number.nickname = params[:nickname]
  end
end

[
  { name: 'Alan',     status: 'available', admin: false },
  { name: 'Barbara',  status: 'offline',   admin: true },
  { name: 'Chaminda', status: 'on_call',   admin: false },
  { name: 'Dylan',    status: 'available', admin: false }
].each do |params|
  name = params.delete(:name)
  Agent.find_or_create_by(name: name) do |agent|
    agent.status = params[:status]
    agent.admin  = params[:admin]
  end
end

phone_numbers = PhoneNumber.all
agents = Agent.all

phone_numbers.each do |phone_number|
  agents.each do |agent|
    PhoneCall.create!(phone_number: phone_number, agent: agent, status: 'ended')
  end
end

agent = Agent.find_by(name: 'Chaminda')

PhoneCall.create!(phone_number: phone_numbers.last, agent: agent, status: 'in_progress')
