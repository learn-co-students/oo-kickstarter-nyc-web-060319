class Project

    attr_reader :title

    attr_accessor :backers


    def initialize(title)
        @title = title
        @backers = []
    end 

    def add_backer(backer) #Using a Backer_inst as arg...
        self.backers << backer #Add backer to Proj_inst @backers arr
        backer.backed_projects << self #Converselty, add Proj_inst to backer's @backed_projects arr
    end


end
