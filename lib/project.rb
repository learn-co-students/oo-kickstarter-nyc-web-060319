class Project

    attr_reader :name, :backers, :backed_projects, :title

    def initialize (title)
        @title = title
        @backers = []
        @backed_projects = backed_projects
    end

    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end
end
