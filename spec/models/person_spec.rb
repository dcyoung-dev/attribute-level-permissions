require 'rails_helper'

RSpec.describe Person, type: :model do
  it "casts attributes" do
    person = Person.create(passport_number: "123456")
    expect(person.passport_number).to be_a(PassportNumber)
    expect(person.passport_number).to eq("123456")
  end
end
