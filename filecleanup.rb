require "fileutils"

# Takes any file extension in filetypes and moves them into directory.`filetype`
# Excludes directories and anything else in `exclude`
# Script cleans up in the present working a directory; a remake of a Perl script I made in high school

filetypes=[".jpg", ".gif", ".jpeg", ".png", ".html", ".exe"]
exclude=["cleanup.exe", "cleanup.rb", ".", ".."]

directory = Dir.entries(".")

(directory-exclude).each do |filedir|
	filetypes.each do |filetype|
		if (filedir.include?(filetype) && File.file?(filedir))			
			FileUtils.mkdir_p("directory#{filetype}")
			FileUtils.mv("./#{filedir}", "./directory#{filetype}/#{filedir}")
		end
	end

end
