#level_1_challenges

#Try to find a Zombie where the ID is 1.
Zombie.find(1);

#Create a new Zombie.
Zombie.create;

#Find the last Zombie in the database, but don't use IDs
Zombie.last;

#Find all Zombies ordered by their names.
Zombie.all.order(:name);

#Update Zombie 3's graveyard to 'Benny Hills Memorial'
z = Zombie.find(3);
z.update(graveyard: "Benny Hills Memorial");

#Destroy the Zombie with an ID of 3.
Zombie.find(3).destroy;

#level_2_challenges

#Define a Zombie model
class Zombie < ActiveRecord::Base
end

#Add a validation that checks for the presence of a Zombie's name
class Zombie < ActiveRecord::Base
	validates_presence_of :name
end

#Add a validation that checks for the uniqueness of a Zombie's name.
class Zombie < ActiveRecord::Base
	validates_uniqueness_of :name
end

#Validate both the uniqueness and the presence of a Zombie's name on a single line, using the new validation syntax.
class Zombie <ActiveRecord::Base
	validates :name,
		uniqueness: true,
		presence: true
end

#A Weapon belongs to a Zombie. Create that relationship.
class Weapon < ActiveRecord::Base
	belongs_to :zombie
	#Question: why is :zombie lowercase and not uppercase if it's referring to a table?
end

#Assuming the models and relationships are properly defined, find all the weapons that belong to Zombie 'Ash'.
ash = Zombie.find(1);
ash.weapons;




















