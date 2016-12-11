# TODO:
# 	1. Should be able to point it at a directory.
# 	2. Number of lines should be configureable.
# 	3. Add support for different file types.
# 	4. Add support for user configured metadata.
# 	5. Break near the number of lines desired while maintaining a blockquote or list or something.
# 	6. Add support for breaking on chapters - Maybe on <h1> or '#'.
# 	7. Add to Jekyll so that this is run for each build. Maybe be a part of the watch. Before or After jekyll touches the file?
# 	8. Find out how Jekyll generates the sites to be sure that it generates the pages in order.
#   9. Each page should be titled index.html inside it's page number folder. {page_number}/index.html


# Requirements
require 'fileutils'

# Delete the pages directory if it exits
FileUtils.rm_rf('_pages')

# Create the pages directory if it doesn't exist
FileUtils.mkdir_p('_pages')

# Variables
page_number = 1 # Page number
number_of_lines = 34 # Number of lines per page
source_file_path = "_chapters/" # File path to the directory where the files are held.
destination_file_path = "_pages/" # Destination file path
layout = "page" # Which layout should the pages use?

# Handle .md files
Dir.glob("#{source_file_path}*.md") do |file|

	IO.readlines("#{file}").each_slice number_of_lines do |lines|
	 	fname = "#{destination_file_path}#{page_number}.md"
		page_fname = File.open(fname, "w+")

		page_fname.puts (
			"---\n" + # Begin YAML
			"title: #{page_number}\n" + # Add title metadata
			"layout: #{layout}\n" + # Add layout metadata
			"---\n" + # End YAML
			lines.join("") # Add content
			)

		page_fname.close
		page_number += 1
	end
end
