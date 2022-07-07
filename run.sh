folder=results
tests="add div new bhaskara double_add triple_add" # add a new test here

rm -rf $folder
mkdir $folder

mix escript.build

printf "\n\n"
for test in $tests; do
    printf "======================$test benchmark ======================\n"
    printf "escript benchmarks $test 1 2> $folder/$test.txt\n"
    escript benchmarks $test 1 2> $folder/$test.txt
    printf "======================$test benchmark ======================\n\n\n\n"
done