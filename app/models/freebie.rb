class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def print_details
       "#{dev.name} owns a #{item_name} from #{company.name}."
    end

    # ignore this below it doesn't work!
    # def destroy_freebie(freebie)
    #     Freebie.where(freebie.id == self.freebie).destroy_all
    # end 
    

end
