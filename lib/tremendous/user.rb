module Tremendous
  class User

    attr_accessor :name, :email

    def initialize(attributes)
      attributes = attributes.with_indifferent_access
      self.name = attributes[:name]
      self.email = attributes[:email]
    end

  end
end
