class VentureCapitalist 
    attr_accessor :name, :total_worth

    @@all = []
    
    def initialize(name, total_worth)
        @name = name
        @total_worth =  total_worth

        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select{ |vc| vc.total_worth > 1000000000 }
    end

    def in_club
        result = self.total_worth > 1000000000 ? true : false
    end

    def offer_contract(startup, type, investment )
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select{ |fr| fr.venture_capitalist == self }
    end

    def portfolio
        self.funding_rounds.map{ |fr| fr.startup }.uniq ############
    end

    def biggest_investment
        # self.funding_rounds.max { | round_a, round_b| round_a.investment <=> round_b.investment }
        self.funding_rounds.max_by { |fr| fr.investment }
    end

    def invested(domain)
        self.funding_rounds.select{ |fr| fr.startup.domain == domain }.map{ |fr| fr.investment.to_f}.sum
    end
#find all investments for particular domain

#return the sum of all investments
end
