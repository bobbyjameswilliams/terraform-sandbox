clear

GIT_SEPARATOR="----------GIT----------"

# Dir check

cd ..
repo_dir=$(pwd)
dirProvider="${repo_dir}/terraform-provider-jamfpro"
dirSdk="${repo_dir}/go-api-sdk-jamfpro"
dirClient="${repo_dir}/go-api-http-client"
dirIntegration="${repo_dir}/go-api-http-client-integrations"
directories=("$dirProvider" "$dirSdk" "$dirClient" "$dirIntegration")

echo "checking dirs..."
for dir in "${directories[@]}"; do
  if [ ! -d "$dir" ]; then
    echo "Directory $dir does not exist."
    exit 1
  fi
done

# Github links

ghSdk="github.com/deploymenttheory/go-api-sdk-jamfpro"
ghClient="github.com/deploymenttheory/go-api-http-client"
ghIntegration="github.com/deploymenttheory/go-api-http-client-integrations"

TARGET_BRANCH_SDK="latest"
TARGET_BRANCH_HTTP_CLIENT="latest"
TARGET_BRANCH_INTEGRATION="dev/bobby"

GH_SDK="$ghSdk@$TARGET_BRANCH_SDK"
GH_CLIENT="$ghClient@$TARGET_BRANCH_HTTP_CLIENT"
GH_INTEGRATION="$ghIntegration@$TARGET_BRANCH_INTEGRATION"

# Automated Commits

# echo "committing saved changes"
# debuggingCommitMessage="automated debugging"

# echo $GIT_SEPARATOR
# cd $dirSdk
# git add .
# git commit -m "automated debugging comm"
# git push

# echo $GIT_SEPARATOR
# cd $dirHttpClient
# git add .
# git commit -m "automated debugging"
# git push

# echo $GIT_SEPARATOR
# cd $dirJproIntegration
# git add .
# git commit -m "automated debugging"
# git push
# echo "----------GIT DONE----------"

# Mod dependency updates


echo "updating sdk modules..."
cd $dirSdk
go clean --cache
GOPROXY=direct go get -u $GH_CLIENT
GOPROXY=direct go get -u $GH_INTEGRATION
go mod tidy


echo "updating provider modules..."
cd $dirProvider
go clean --cache
GOPROXY=direct go get -u $GH_SDK
GOPROXY=direct go get -u $GH_CLIENT
GOPROXY=direct go get -u $GH_INTEGRATION
go mod tidy

echo "updating integration modules..."
cd $dirIntegration
go clean --cache
GOPROXY=direct go get -u $GH_CLIENT
go mod tidy

echo "done"