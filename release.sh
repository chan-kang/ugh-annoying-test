set -xe

token='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'
branch_name='main'
bot_name='chan-kang'

REPO_REF="https://${bot_name}:${token}@github.com/${GITHUB_REPOSITORY}.git"
# git config http.sslVerify false
git config user.name "${bot_name}"
git config user.email "${bot_name}@users.noreply.github.com"

# git remote add upstream "${REPO_REF}"
# git branch --verbose

git checkout ${branch_name}
# git add -A
# timestamp=$(date -u)
git commit --allow-empty -m "Bot published ${GITHUB_SHA}" || exit 0
git push origin HEAD
# git pull --rebase upstream ${branch_name}
# git push upstream ${branch_name}
