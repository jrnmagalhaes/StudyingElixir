defmodule ModulePlayground do
    # imports only puts function from IO module
    import IO, only: [puts: 1]

    # imports everything exept inspect from Kernel module
    import Kernel, except: [inspect: 1]

    # give an alias to ModulePlayground.Misc.Util.Math module
    alias ModulePlayground.Misc.Util.Math, as: MyMath

    # require Integer, otherwise, this module wouldn't able to use is_even macro
    require Integer

    # hello world function
    def say_hello do
        inspect "Hello World!"
    end

    # example of function that couldn't be in use if the Kernel was not imported without inspect function
    def inspect(param1) do
        puts "Starting output"
        puts param1
        puts "Ending output"
    end

    # function using a function from another module
    def print_sum do
        MyMath.add(1, 2)
    end

    # function using a macro (Integer.is_even)
    def print_is_even(num) do
        puts "is #{num} even? #{Integer.is_even(num)}"
    end
end