require 'spec_helper'

describe "some tests" do

	before(:each) do
		puts "Yellow"
	end

	it "should fail" do
		false.should == true
	end

	it "should pass" do
		false.should == false
	end

	it "should be pending" do
		pending
	end
end
