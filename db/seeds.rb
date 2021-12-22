puts "Creating companies..."
c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1 = Dev.create(name: "Rick")
d2 = Dev.create(name: "Morty")
d3 = Dev.create(name: "Mr. Meseeks")
d4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
f1 = Freebie.create(item_name: "USB drive", value: 15, company: c1, dev: d1)
f2 = Freebie.create(item_name: "External battery charger", value: 25, company: c2, dev: d2)
f3 = Freebie.create(item_name: "AOL installation cd ROM", value: 0, company: c3, dev: d3)
f4 = Freebie.create(item_name: "Monster Energy drink", value: 3, company: c4, dev: d4)

puts "Seeding done!"
