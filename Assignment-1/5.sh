#Write a function in a shell script that calculates the factorial of a given number.
read -p "Enter the number to calculate its factorial: " n
res=1
for ((i= 1; i<=n;i++))
do
res=$((i*res))
done
echo "The Result of factorial = $res"