folder=results
tests="sum div new bhaskara" # add a new test here

rm -rf $folder
mkdir $folder

mix escript.build

for test in $tests; do
    escript benchmarks $test 1 2> $folder/$test.txt
done