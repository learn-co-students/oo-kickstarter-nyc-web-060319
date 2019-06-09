class Project

    attr_reader :backers, :title

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        backer.backed_projects << self
        @backers << backer
    end

end