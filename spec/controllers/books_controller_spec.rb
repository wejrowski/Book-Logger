require 'spec_helper'

describe BooksController do
  before(:each) do  
    puts 'BEFOREEACH'
    login_user
    puts 'afterEEACH'
  end
  
  it "should have a current_user" do
    puts 'SHOULD HAVE USER'
    subject.current_user.should_not be_nil
  end

  it "should get index" do
    get 'index'
    response.should be_success
  end
  
  
  
end