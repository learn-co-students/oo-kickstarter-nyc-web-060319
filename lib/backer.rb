require 'pry'


class Backer
	attr_reader :backed_projects, :name		# p/i - attr_reader for backed_projects


	def initialize(name)
		@backed_projects = []			#p/i - initialize w @backed_projects var set to an empty array
		@name = name
	end


	def back_project(project_instance)	# need to update Project-@backers too
		self.backed_projects << project_instance
		# binding.pry
		# =>   #<Backer:0x00007fc67a0a31b8
 		# @backed_projects=[#<Project:0x00007fc67a0a2bc8 @backers=[], @title="Magic The Gathering Thing">],
 		# @name="Spencer">

		#self.name = "spencer"

		puts "Backer class project_instance.backers is #{project_instance.backers}"
		#=> always [] ... 

		project_instance.backers << self # instruc "adds the backer to the project's backers array"
	end 								 # (&not add backer to Project class @backers=[] like I thought)

	puts " Backer class backed_projects are: #{@backed_projects}" #always [] ... 



end
