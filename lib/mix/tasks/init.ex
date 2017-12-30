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
		assets_vendor_path = Path.join(~w(assets vendor materialize))
		assets_static_path = Path.join(~w(assets static))

		copy_resource(npm_path, assets_vendor_path, "sass")
		copy_resource(npm_path, assets_vendor_path, "js")
		copy_resource(npm_path, assets_static_path, "fonts")
	end

	defp copy_resource(source_path, dist_path, dir) do
		res_dist_path = Path.join([dist_path, dir])
		File.cp_r(Path.join([source_path, dir]), res_dist_path)
		make_dir target_source_path
	end

	defp chek_path(path, text) do
		unless File.exists? path do
			Mix.raise """
			Can't find "#{path}" #{text}
			"""
		end
	end

	defp make_dir(path) do
		unless File.exists? path do
			File.mkdir_p path
		end
	end
end