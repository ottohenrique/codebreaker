module Codebreaker
    class Game
        def initialize(output)
            @output = output
        end

        def start(secret)
            @output.puts "Welcome to Codebreaker!"
            @output.puts "Enter a guess:"
        end

        def guess(code)
        end
    end
end
