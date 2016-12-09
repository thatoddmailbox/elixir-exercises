defmodule Taxes do
    def parse_csv_line(line) do
        line
        |> String.split(",")
        |> Enum.map(&String.trim(&1))
    end
    def parse_header_line(header) do
        parse_csv_line(header)
        |> Enum.map(&String.to_atom(&1))
    end
    def handle_line(line) do
        [String.to_integer(Enum.at(line, 0)),
         Enum.at(line, 1) |>
         String.split(":") |>
         Enum.at(1) |>
         String.to_atom,
         String.to_float(Enum.at(line, 2))]
    end
    def parse_file(name) do
        {:ok, file} = File.open(name)
        header = parse_header_line(IO.read(file, :line))
        IO.stream(file, :line) |>
        Enum.map(&parse_csv_line(&1)) |>
        Enum.map(&handle_line(&1)) |>
        Enum.map(&Enum.zip(header, &1))

        #orders = [
        #[ id: 123, ship_to: :NC, net_amount: 100.00 ],
        #[ id: 124, ship_to: :OK, net_amount:  35.50 ],
        #[ id: 125, ship_to: :TX, net_amount:  24.00 ],
        #[ id: 126, ship_to: :TX, net_amount:  44.80 ],
        #[ id: 127, ship_to: :NC, net_amount:  25.00 ],
        #[ id: 128, ship_to: :MA, net_amount:  10.00 ],
        #[ id: 129, ship_to: :CA, net_amount: 102.00 ],
        #[ id: 130, ship_to: :NC, net_amount:  50.00 ] ]
    end
end
