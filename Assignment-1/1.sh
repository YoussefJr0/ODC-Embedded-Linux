#Write a shell script that calculates the sum of integers from 1 to N using a loop.
read -p "Enter number N: " n
for ((i=1; i<=n;++i))
do
num=$((i+num))
done 
echo "the sum of integers from 1 to N = $num"