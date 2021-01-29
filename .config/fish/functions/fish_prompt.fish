function fish_prompt --description 'Write out the prompt'

	set -g __fish_git_prompt_color_branch green --bold
	set -g __fish_git_prompt_color_dirtystate yellow
	set -g __fish_git_prompt_color_invalidstate red
	set -g __fish_git_prompt_color_merging magenta
	set -g __fish_git_prompt_color_stagedstate yellow
	set -g __fish_git_prompt_color_cleanstate cyan
	set -g __fish_git_prompt_show_informative_status 1
	set -g __fish_git_prompt_showupstream "informative"
	set -g __fish_git_prompt_showdirtystate "yes"
	set -g fish_prompt_pwd_dir_length 0

    set -l last_status $status
	
	set_color normal
	echo
	echo -n '[' 
    set_color cyan

    # User
    echo -n $USER
    echo -n '@'

    # Host
    echo -n (prompt_hostname)

    echo -n " "

    # PWD
    echo -n (prompt_pwd)

    set_color normal
	echo -n ']'

    fish_git_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
		echo -n "[$last_status] "
	else
		set_color normal
    end

    echo -n '➤ '
    set_color normal
end
