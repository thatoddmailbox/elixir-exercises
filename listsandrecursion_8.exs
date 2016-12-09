defmodule Taxes do
    def calculate([], _tax_rates), do: []
    def calculate([ head | tail ], tax_rates) do
        state = head[:ship_to]
        net = head[:net_amount]
        
        tax = tax_rates[state]

        if tax do
            tax_percent = 1 + tax
            total = net * tax_percent
        else
            total = net
        end

        new_head = Dict.put head, :total_amount, total
        [ new_head | process_orders(tail, tax_rates) ]
    end
end
