#!/bin/bash

alias pa="php artisan"

# Development
alias pas="php artisan serve"

# Database
alias pam="php artisan migrate"
alias pamf="php artisan migrate:fresh"
alias pamfs="php artisan migrate:fresh --seed"
alias pamr="php artisan migrate:rollback"

# Model
alias pamm="php artisan make:model "
alias pammmc="php artisan make:model $1 -mc"
alias pammmcr="php artisan make:model $1 -mcr"

# Controller
alias pamc="php artisan make:controller $1"
alias pamcr="php artisan make:controller "$1" --resource"

# Seeder
alias pads="php artisan db:seed "
alias pams="php artisan make:seeder "

# Clears
alias pacac="php artisan cache:clear"
alias pacoc="php artisan config:clear"
alias pavic="php artisan view:clear"
alias paroc="php artisan route:clear"
alias paopt="php artisan optimize"

# Queues
alias paqw="php artisan queue:work"
alias paqt="php artisan queue:table"
alias paqf="php artisan queue:failed"
alias paql="php artisan queue:listen"
alias paqr="php artisan queue:retry"

# Others
alias pamprv="php artisan make:provider "
alias patk="php artisan tinker"
alias pamn="php artisan make:notification "
alias pamfa="php artisan make:factory "
alias pamp="php artisan make:policy "
alias pame="php artisan make:event "
alias pamj="php artisan make:job "
alias paml="php artisan make:listener "