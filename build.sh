#!/bin/sh

if [ ! $1 ]
then
    echo "No language to build specified"

    exit 0
fi

if [ ! -d "$PWD/docs/$1" ]
then
    echo "Cannot build for that langauge. Configuration does not exist."

    exit 1
fi

MODE=$2

if [ ! "$MODE" ]
then
    MODE="html"
fi

python cleanup.py
rm -rf docs/_build

./i18n.sh $1

cd "$PWD/docs/$1"

sphinx-build -M $MODE . _build

cd ..

rm -rf _build
mv $1/_build .

cd ..
python cleanup.py
python find_missing_images.py $1
