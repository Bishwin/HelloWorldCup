class User < ApplicationRecord

  def as_string
    "#{self.name} has #{self.teams[0]['name']} and #{self.teams[1]['name']}"
  end
end
