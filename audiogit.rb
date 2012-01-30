require 'trollop'

opts = Trollop::options do
    version "audiogit 0.1"

    opt :create, "Create a new project"
    opt :clone, "Clone a project"
    opt :watch, "Watch for changes in project"
    opt :publish, "Publish a project"
    opt :show, "Show published projects"
end
