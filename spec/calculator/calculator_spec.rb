require 'calculator'

describe Calculator do
    context '#div' do
        it 'divide by 0' do
            expect { subject.div(8, 0)}.to raise_error(ZeroDivisionError)
        end
    end

    context '#sum' do
        it 'positive numbers' do
            result = subject.sum(5, 7)
            expect(result).to eq(12)
        end

        it 'negative and positive' do
            result = subject.sum(-5, 7)
            expect(result).to eq(2)
        end

        it 'negative numbers' do
            result = subject.sum(-5, -7)
            expect(result).to eq(-12)
        end
    end 
end