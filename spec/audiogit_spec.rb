require_relative "../lib/audiogit/git_facade"

describe GitFacade do
    before { @facade = GitFacade.new }

    it "should create a git repository when it receives the create() message" do
        @facade.create
        exist = FileTest.exist? ".audiogit"
        exist.should == true
        FileUtils.rm_rf ".audiogit"
    end

    it "should add and commit files listed in Ardour xml file" do
        @facade.update "ardour.xml"
        # list files commited to git => should be = to files in ardour.xml
    end
end
