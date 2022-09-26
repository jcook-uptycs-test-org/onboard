
FIRST_NAME=
LAST_NAME=
EMAIL_ADDR=

SSH_KEY_ALG=ed25519
SSH_KEY_FILE=${HOME}/.ssh/id_${SSH_KEY_ALG}

# https://support.atlassian.com/bitbucket-cloud/docs/configure-your-dvcs-username-for-commits/
git config --global user.name "$FIRST_NAME $LAST_NAME"
git config --global user.email "$EMAIL_ADDR"

git config --list


# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
ssh-keygen -t ${SSH_KEY_ALG} -C "$EMAIL_ADDR" -f ${SSH_KEY_FILE}
ssh-add -L ${SSH_KEY_FILE}

