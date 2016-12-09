defmodule PhoenixTest.PaasaaController do
	use PhoenixTest.Web, :controller

    def index(conn, _params) do
    	render conn, "index.html"
    end

	def result(conn, %{"text_input" => text_input} = params) do
		render conn, "result.html", text_input: text_input, result: Paasaa.all(text_input)
	end

	def result(conn, _params) do
		render conn, "missing_param.html"
	end

	def pdf_result(conn, %{"text_input" => text_input} = params) do
		{:ok, pid} = Gutenex.start_link
		Gutenex.begin_text(pid)
			|> Gutenex.set_font("Helvetica", 18)
			|> Gutenex.text_position(30, 750)
			|> Gutenex.text_render_mode(:fill)
			|> Gutenex.write_text("Input: ")
			|> Gutenex.write_text(text_input)
			|> Gutenex.end_text
			|> Gutenex.export("./tmp/paasaaresult.pdf")
    		|> Gutenex.stop
		render conn, "view_pdf.html"
	end
end
