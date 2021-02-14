class Ride < ApplicationRecord
    belongs_to :user
    belongs_to :attraction

    def take_ride
        msg = []
        if user.tickets < attraction.tickets
            msg << "Sorry. You do not have enough tickets for the #{self.attraction.name}."
        end
        if user.height < attraction.min_height
            msg << "Sorry. You are not tall enough to ride the #{self.attraction.name}."
        end
        if user.tickets >= attraction.tickets && user.height >= attraction.min_height
            user.tickets -= attraction.tickets
            user.nausea += attraction.nausea_rating
            user.happiness += attraction.happiness_rating
            user.save
            msg << "Thanks for riding the #{self.attraction.name}!"
        end
        msg.join(" ")
    end
end
