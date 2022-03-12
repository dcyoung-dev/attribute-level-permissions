class PassportNumber < String
end

class PassportNumberType < ActiveRecord::Type::Value
  def cast(value)
    PassportNumber.new(value)
  end
end

class Person < ApplicationRecord
  attribute :passport_number, PassportNumberType.new
end

