REPOSITORY=$1
# argument -z is used to check if a variable is set or empty
if [ -z "$REPOSITORY" ]; then
	echo -e "\e[31mError : \e[39mMissing repository name"
	echo -e "\e[32mSyntax: \e[39mgitinit \"REPOSITORYNAME\""
	exit
fi

git init .
git remote add origin ssh://git@bitbucket.org/tomonso/$REPOSITORY.git
