require 'rails_helper'

describe User do
    before do
        @user = User.create(email: "odwod@example.com", password:"password")
    end
    it "checks the email is valid" do
        expect(@user.save).to eq(true)
    end

    it "checks users cannot add_stock" do 
        expect{@user.add_stock}.to raise_error(NoMethodError)    
    end

    it "checks users can add non duplicate stocks when less than 10 owned stocks" do
        expect(@user.under_stock_limit?).to eq(true)
    end

    #it "checks users cannot fake stocks" do 
    #    --CAN ADD STOCK ONLY CHECKS IF ALREADY OWNED AND UNDER LIMIT
    #    expect(@user.can_add_stock?('ARARRA')).to eq(false)
    #end
end