defmodule FizzBuzz do
    import IO, only: [puts: 1]

    def fizzbuzz do
        Enum.each(100..1, &output/1)
    end

    defp output(param) when rem(param, 5) == 0 and rem(param, 3) == 0, do: puts "FizzBuzz"
    defp output(param) when rem(param, 5) == 0, do: puts "Buzz"
    defp output(param) when rem(param, 3) == 0, do: puts "Fizz"
    defp output(param), do: puts param
        
end