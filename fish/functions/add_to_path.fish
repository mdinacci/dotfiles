function add_to_path --description 'Persistently prepend directories to PATH'
    set -U fish_user_paths $fish_user_paths $argv
end
