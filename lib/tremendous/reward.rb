module Tremendous
  class Reward
    def self.list(filters={})
      Tremendous::Request.get(
        'rewards',
        query: filters,
        format: 'json'
      )[:rewards]
    end

    def self.show(id)
      response = Tremendous::Request.get("rewards/#{id}")[:reward]
    end
  end
end
