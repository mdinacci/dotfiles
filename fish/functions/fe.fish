function fe --description 'Find and edit a file with vim'
	find . -name $argv -exec vi \{\} \;
end
