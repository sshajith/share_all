require 'spec_helper'

describe Album do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description",
      :user_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Album.create!(@valid_attributes)
  end
end
