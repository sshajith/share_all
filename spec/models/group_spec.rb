require 'spec_helper'

describe Group do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description",
      :user_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Group.create!(@valid_attributes)
  end        
  
  it "should not create a group without a name" do
  end
  
end
