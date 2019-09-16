# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
# User specific environment and startup programs
if [ -d $HOME/.local/bin ] ; then
    PATH=$PATH:$HOME/.local/bin
fi
if [ -d $HOME/bin ] ; then
    PATH=$PATH:$HOME/bin
fi

# ALIASES
alias glog="git log --pretty=format:'%C(yellow)%h %Cred%an %Cblue%ad %Cgreen%d %Creset%s' --date=relative --graph"

# Paths
alias myproj="cd /projects/saan8193"
alias myscratch="cd /scratch/summit/saan8193"
alias myhome="cd /home/saan8193"
alias jobs="cd /projects/saan8193/jobscripts"
alias nab="cd /projects/saan8193/newagebob"
alias resSpindle="cd /scratch/summit/saan8193/spindle_bd_mp"
alias cian="cd /projects/saan8193/ImageAnalysis/SingleCell"
alias iman="cd /projects/saan8193/ImageAnalysis"
alias resSingleCell="cd /scratch/summit/saan8193/SingleCell"

alias ls="ls -FGlAhp"
alias vi="vim"

alias ..="cd ..;"
alias ...="..;..;"
alias ....="...; ..;"
alias .....="....; ..;"
alias ......=".....; ..;"

# A: newagebob: make and run, and clean
alias make_nab="make CFG=release LOC=Summit NOGRAPH=true-j8 spindle_bd_mp"
#alias clean_nab="rm *posit*; rm *version*; rm *forces; rm *thermo"

alias showsq="squeue -u $USER -S 'i' "
alias spaceUsage="curc-quota"

# -------------------------------------------------------------------------------------------------------

# PATHS
export PATH=$PATH:/Users/saadjansari/bin

# terminal colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Remove this if you don't want to display README at login
# if [ -f ~/README.mdwn ]; then
#    cat ~/README.mdwn
# fi
