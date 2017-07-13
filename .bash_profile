# test
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

alias ll="ls -laFgh"
eval $(thefuck --alias)


source ~/.exif_tools

# -------------------------------

# EXIF STUFF
alias exif="exiftool"

# regular utilities
alias collapse="exiftool -r \"-Directory=.\" ."
alias expandd="exiftool -d %Y/%m \"-directory<filemodifydate\" \"-directory<createdate\" \"-directory<datetimeoriginal\" ."

# formatting
alias start="echo \"=============== here we go! ===============\"; "
alias middlebreak="echo \"\n==================================================\""
alias done="say \"done\""
alias echo_badinfo="echo \"=============== all bad info is gone! ===============\""
alias echo_dateset="echo \"=============== dates set! ===============\""
alias echo_originals="printf \"=============== originals deleted! ===============\""

# unused

alias upperjpg="exiftool -if '\$FileExtension eq \"jpg\"' -filename=rename/%f.JPG .; exiftool -ext jpg -r -Directory=. .; rm -rf rename/"

# makes all extensions lowercase
### jpg
### mp4
# this uses a condition to check for the CAP version, and only processes those files.
lowereverything() {
	jpg_lower $1
	mp4_lower $1
  gif_lower $1
	exiftool -ext jpg mp4 gif -r -Directory=. $1
	rm -rf rename/
	echo "===============...and everything is lowercase !"
}
