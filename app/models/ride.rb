class Ride < ActiveRecord::Base
    belongs_to :attraction
    belongs_to :user

    def take_ride
        if self.user.tickets < self.attraction.tickets && self.user.height < self.attraction.min_height
            return 'Sorry. You do not have enough tickets to ride the Roller Coaster. You are not tall enough to ride the Roller Coaster.'
        elsif self.user.tickets < self.attraction.tickets 
            "Sorry. You do not have enough tickets to ride the Roller Coaster."
        elsif self.user.height < self.attraction.min_height 
            return 'Sorry. You are not tall enough to ride the Roller Coaster.'
        else 
            self.user.tickets = self.user.tickets - self.attraction.tickets 
            self.user.nausea = self.user.nausea + self.attraction.nausea_rating
            self.user.happiness = self.user.happiness + self.attraction.happiness_rating
            user.save
        end
    end
end
