class Startup

    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @domain = domain
        @founder = founder

        @@all << self
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.all
        @@all
    end

    def find_by_founder(name)
        self.all.select{ |startup| startup.founder == name }
    end


    def domains
        self.all.map{ |startup| startup.domain }
    end

    def sign_contract(venture_capitalist, type, investment)
      FundingRound.new(self, venture_capitalist, type, investment)
    end

    def funding_rounds
        FundingRound.all.select{ |funding_round| funding_round.startup == self }
    end

    def num_funding_rounds
        funding_rounds.length
    end

    def total_funds
        funding_rounds.sum {|o|  o.investment }
    end

    def investors
        funding_rounds.compact.uniq
    end

    def big_investors
        self.investors.select {|i|i.total_worth > 1000000000}.uniq
    end








######
end###
