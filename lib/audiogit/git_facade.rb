require 'git'

class GitFacade
    def create
        Git.init('.', { :repository => '.audiogit', :index => '.audiogit/index' })
    end
end
