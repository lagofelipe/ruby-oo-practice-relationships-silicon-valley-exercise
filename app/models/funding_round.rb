class FundingRound
    attr_reader :startup, :venture_capitalist
    attr_accessor :type, :investment , :net_worth

    @@all = []
        def initialize(startup, venture_capitalist, type, investment)
            @startup = startup
            @venture_capitalist = venture_capitalist
            @type = type
            @investment = investment.to_f
            @net_worth = net_worth
            @@all << self
        end

        def self.all
            @@all
        end
end
