function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    # User
    set_color $fish_color_user --bold
    echo -n $USER
    set_color normal

    echo -n '@'

    # Host
    set_color $fish_color_host --bold
    echo -n (prompt_hostname)
    set_color normal

    echo -n ':'

    # PWD
    set_color $fish_color_cwd --bold
    echo -n (prompt_pwd)
    set_color normal

    __terlar_git_prompt
    fish_hg_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
		echo -n "[$last_status] "
	else
		set_color --bold yellow
    end

    echo -n '➤ '
    set_color normal
end
