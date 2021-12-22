class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.any? do |freebie|
            freebie.item_name == item_name
        end
    end

    def give_away(dev, freebie)
        Self.freebie.update(dev: dev) unless freebie.dev != self
    end 

    # def destroy_freebie(freebie)
    #     self.freebie.each do |each_freebie| 
    #     if each_freebie.id == freebie.id
    #     end 
    # end


    # def remove_ratings(dish)
    #     #user_inst = self
    #     # .destroy
    #     self.ratings.each do |each_rating|
    #         if each_rating.dish_id == dish.id
    #             each_rating.destroy
    #     end
    # end

end