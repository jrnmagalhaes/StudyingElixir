defmodule ModulePatternMatching do
    def first([]),  do: nil
    def first([head | _]), do: head
end