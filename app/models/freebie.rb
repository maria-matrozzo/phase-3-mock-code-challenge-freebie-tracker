class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def print_details
       "#{dev.name} owns a #{item_name} from #{company.name}."
    end

    def destroy_freebie(freebie)
        Freebie.where(freebie.id == self.freebie).destory
    end 
    

end
