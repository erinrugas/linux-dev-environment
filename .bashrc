eval "$(starship init bash)"
export PATH="$PATH:/opt/nvim-linux64/bin"


#aliases

alias py3venv='~/venv/bin/python3'
alias restartserver='sudo systemctl restart nginx && sudo systemctl restart mysqld && sudo systemctl restart php8.2-fpm'
