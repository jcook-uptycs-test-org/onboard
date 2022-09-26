
FIRST_NAME=
LAST_NAME=
EMAIL_ADDR=

# https://support.atlassian.com/bitbucket-cloud/docs/configure-your-dvcs-username-for-commits/
git config --global user.name "$FIRST_NAME $LAST_NAME"
git config --global user.email "$EMAIL_ADDR"

git config --list
