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


    def destroy_freebie_from_company(company)

            self.freebies.each do |each_free|

                if each_free.company_id == company.id

                    each_free.destroy

                else

                    puts "Don't Destroy That One!"

                end

            end

    end


end