require 'pry'

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backed = ProjectBacker.all.select {|proj| proj.project == self}.map{|proj| proj.backer}
    end
end