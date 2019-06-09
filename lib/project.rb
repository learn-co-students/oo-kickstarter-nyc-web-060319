require 'pry'


class Project
	attr_reader :backers, :title		# p/i - attr_reader for backers.


	def initialize(title)
		@backers = []			#p/i- initialize w @backers variable set to an empty array
		@title = title
	end

	def add_backer(backer_instance)	# need to update Backer-@backed_projects too
		@backers << backer_instance  #Ok, dont touch

							 	#adds project to Backer's backed_projects array
							 	#to instance, not to the other Class.
							 	# ie. not to Backer class @backed_projects
		backer_instance.backed_projects << self  #backer_instance.title
		
		puts "backer_instance.backed_projects is #{backer_instance.backed_projects}"
		# ^^ outputs: backer_instance is [#<Project:0x00007ffd181d6c68 
		#  @backers=[#<Backer:0x00007ffd181d4da0 @backed_projects=[...], 
		#  @name="Arel">], 
		#  @title="All The Ropes">]

	end

	# def self.add_backer_to_Project(backer_in_project)
	# 	backer_in_project.add_backer(backer_in_project)
	# end


end
