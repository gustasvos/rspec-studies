require 'calculator'

describe Calculator do
    context 'use sum method for 2 numbers' do
        it 'positive numbers' do
            calc = Calculator.new
            result = calc.sum(5, 7)
            expect(result).to eq(12)
        end

        it 'negative numbers' do
            calc = Calculator.new
            result = calc.sum(-5, 7)
            expect(result).to eq(2)
        end
    end 
end