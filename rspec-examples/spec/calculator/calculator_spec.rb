require 'calculator'

describe Calculator do
    # error matcher
    context '#div' do
        it 'divide by 0' do
            expect { subject.div(8, 0)}.to raise_error(ZeroDivisionError) # using error class
            expect { subject.div(8, 0)}.to raise_error("divided by 0") # using error message
            expect { subject.div(8, 0)}.to raise_error(ZeroDivisionError, "divided by 0") # both
            expect { subject.div(8, 0)}.to raise_error(/divided/)# regular expression
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