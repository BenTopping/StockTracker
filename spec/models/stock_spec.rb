require 'rails_helper'

describe Stock do
    context "Checking validity" do

        it "Checks invalid stocks arent returned as valid" do
            stock = Stock.new_from_lookup('RANDOM')
            expect(stock).to be_nil 
        end

        it "Checks valid stocks are returned" do
            stock = Stock.new_from_lookup('AAPL')
            expect(stock.ticker).to eq('AAPL') 
        end

    end
end