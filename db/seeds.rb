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

CALLS_PER_AGENT = 100

phone_numbers = PhoneNumber.all
agents = Agent.all

agents.each do |agent|
  CALLS_PER_AGENT.times { agent.phone_calls.create!(phone_number: phone_numbers.sample, status: 'ended') }
  agent.phone_calls.create!(phone_number: phone_numbers.sample, status: 'in_progress')
end
