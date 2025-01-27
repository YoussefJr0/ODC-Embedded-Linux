# Write a script to calculate the sum of Elements in an Array.
arr=(1 2 3 4 5)
sum=0
for n in ${arr[@]}
do
sum=$((n+sum))
done
echo "The sum is $sum"