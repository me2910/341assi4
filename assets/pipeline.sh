#! bash

RESULT=$(python test1.py)
if [ "$RESULT" != 1 ]; 
then
    echo "$RESULT"
    echo "Comment Check Failed!"
    exit 2
fi
echo 'Comment Check Passed'

npm install
npm run build

cd src/__tests__
npm run test
if [ "$?" != 0 ]; 
then
    
    echo "Test Error: Pipeline failed"
    exit 2
fi

cd ../../../

git add .
git commit -m $1
git push origin master
git status
