require_relative "../lib/audiogit/git_facade"

describe GitFacade do
    it "should create a git repository when it receives the create() message" do
        facade = GitFacade.new
        facade.create
        # TODO : following test doesn't work => folders relative or not?
        exist = FileTest.exist? "../lib/audiogit/.git"
        exist.should == true
    end
end
