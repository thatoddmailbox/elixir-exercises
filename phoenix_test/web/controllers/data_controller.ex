defmodule PhoenixTest.DataController do
    use PhoenixTest.Web, :controller

    def counter([], criticalCount, nonCriticalCount) do
        { criticalCount, nonCriticalCount }
    end

    def counter([head | tail], criticalCount, nonCriticalCount) do
        if Enum.at(head, 12) == "Critical" do
            counter(tail, criticalCount + 1, nonCriticalCount)
        else
            counter(tail, criticalCount, nonCriticalCount + 1)
        end
    end

    def index(conn, _params) do
        csvData = (File.stream!("/Users/student/Downloads/DOHMH_New_York_City_Restaurant_Inspection_Results.csv") |> CSV.decode)
        {critical, non} = counter(csvData |> Enum.take(5000), 0, 0)
        render conn, "index.html", data: csvData, critical: critical, non: non
    end
end
