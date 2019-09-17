# ALIASES

# A: git log with color and branching
alias glog="git log --pretty=format:'%C(yellow)%h %Cred%an %Cblue%ad %Cgreen%d %Creset%s' --date=relative --graph"

# A: connecting to summit
alias connectToSummit="ssh saan8193@login.rc.colorado.edu;"

alias iman="cd ~/Documents/Projects/ImageAnalysis"
alias cian="cd ~/Documents/Projects/ImageAnalysis/SingleCell"
alias paper="cd ~/Desktop/Methods\ Paper/"
alias proj="cd ~/Documents/Projects/"
alias nab="cd ~/Documents/Projects/newagebob/"

# A: improved ls
alias ls="ls -FGlAhp"

# A: cd ..
alias ..="cd ..;"
alias ...=".. .."
alias ....="... .."
alias .....=".... .."
alias ......="..... .."

# A: matlab non-GUI
alias matlab="/Applications/MATLAB_R2019a.app/bin/matlab -nodesktop"

# A: newagebob: make and run, and clean
alias make_nab="make CFG=release -j2 LOC=SA spindle_bd_mp"
alias make_spindle_analysis="make CFG=release -j2 LOC=SA spindle_analysis_new"
alias run_nab="spindle_bd_mp spindle_bd_mp.default.yaml spindle_bd_mp.equil.yaml"
alias run_spindle_analysis="spindle_analysis_new spindle_bd_mp.default.yaml spindle_bd_mp.equil.yaml -p spindle_bd_mp.posit --tomo 1"
alias clean_nab="rm *posit*; rm *version*; rm *forces; rm *thermo"
alias clean_spindle_analysis="rm *um; rm *dat"
alias clean_SpindleAnalysis="clean_spindle_analysis; rm *mov; rm *.pickle; rm *.mat; rm *.pdf; rm *.png;"

# A: vi = vim
alias vi="vim"
# -------------------------------------------------------------------------------------------------------

# PATHS
export PATH=$PATH:/Users/saadjansari/bin

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH=$PATH:/Users/saadjansari/bin/saadjansari

# terminal colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

