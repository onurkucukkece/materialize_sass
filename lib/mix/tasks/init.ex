defmodule Mix.Tasks.Materialize.Init do
	@moduledoc """
	Initialize materialize package

				mix materialize.init

	"""

	# @shortdoc "Initialize materialize-sass-origin"

	use Mix.Task

	@doc "start task"
	def run(_) do
		IO.puts "Installing materialize-sass-origin npm inside assets"
	end
end