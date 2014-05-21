require 'spec_helper'

describe '/contacts' do

  before (:each) do
    Contact.create!([{name: "Ami", email: "mathur7@gmail.com", number: "555-5555", imgUrl: "http://i.imgur.com/NXJjwKis.png"}])
  end

  describe 'GET with JSON' do
    before (:each) do
      get '/contacts.json'
      @result = JSON.parse(response.body)
    end

    it 'returns all contacts items' do
      @result.should_not be_nil
      @result.should have(1).contacts
    end

    it 'should have the correct data in the contacts' do
      @result.find do |contact|
        contact["name"] == "Ami"
      end.should_not be_nil
    end

  end
  
end