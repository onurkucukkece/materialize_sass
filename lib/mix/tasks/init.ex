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
		install_npm()
		|> copy_assets
	end

	defp install_npm do
		System.cmd "npm", ["install", "materialize-sass-origin", "--save-dev"], into: IO.stream(:stdio, :line), cd: "assets"
		
		npm_path = Path.join(~w(assets node_modules materialize-sass-origin))
		
		chek_path(npm_path, "\nTray run npm install materialize-sass-origin --save-dev")

    npm_path
	end

	defp copy_assets(npm_path) do
	end

end