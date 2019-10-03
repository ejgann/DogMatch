require_relative "../spec_helper"


    let(:user) { User.new }
    let(:match) { Match.new }
    describe Match do
    it "finds matches between the user and dog breed" do  
      expect(match.user_dog_comparison).to eq(120)
    end
  