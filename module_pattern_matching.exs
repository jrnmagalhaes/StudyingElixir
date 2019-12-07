defmodule ModulePatternMatching do

    # method signature with default value for val
    def first(list, val \\ nil)

    # method that returns the head of the list
    def first([head | _], _), do: head

    # method that returns the specified value or nil if the list is empty
    def first([], val),  do: val
end