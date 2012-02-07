require 'fileutils'
require_relative "../lib/audiogit/git_facade"

describe GitFacade do
    it "should create a git repository when it receives the create() message" do
        facade = GitFacade.new
        facade.create
        exist = FileTest.exist? ".audiogit"
        exist.should == true
        FileUtils.rm_rf ".audiogit"
    end
end
