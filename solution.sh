2)Ans:

touch abc.txt def.txt ghi.txt jkl.txt
for files in *.txt
do
	folderName=`echo $files | awk -F. '{print $1}'`;
	echo $folderName/$files;
	if [ -d $folderName ]
		then
			rm -rf $folderName;
	fi
	mkdir $folderName;
	mv $files $folderName
done

3) Ans:
 
touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1
for files in *.1
do
	filename=`echo $files | awk -F. '{print $1}'`;
        p=`date +"%d%m%Y" | awk '{print $1}'`;
        updatedName=$filename.$p.log;
	if [ -d $updatedName ]
		then
			rm -rf $updatedName;
	fi
	mv $files $updatedName;
done

4)Ans:******Considering we are in the directory where acces.log file is present

cat access.log | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*"
cat access.log | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*"| sort
cat access.log | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*"| awk '{n++} END {print n}'
cat access.log | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*"| sort -u | head -n 4

5)Ans:******Considering we are in the directory where acces.log file is present

cat access.log | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*"| awk '{count[$1]++} END {for (i in count) print i, count[i]}' | sort -k 2n | tail -n 4|awk '{print $2"/"$1}'

8)ans:
   ******Considering we are in the directory where acces.log file is present

cat access.log | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' |sort|  tail -n 10

9)Ans:

                                                                             
echo "Please enter the name of folder you want to find"
read folderName

if [ -d $folderName ]
        then
                echo "Folder already exist"
else
        mkdir $folderName
fi



10) Ans:

$ hello
bash: hello: command not found

$ ls
abc.08022022.log  code.sh  def.08022022.log  ghi.08022022.log  jayesh/  jkl.08022022.log  linux-content/  solution.sh

11)Ans:
 

14)
   i) Ans: $ cat data.csv | awk '$4 >10000'| awk '{print $2 " " $7}'

   ii)Ans: $ cat data.csv | grep CAPTAIN | awk '{sum+= $7}END{print sum}'
   iii)Ans:$ cat data.csv|awk '$5<10000'|awk '$5>7000'| awk '{print $3 " "$5}'
    iv)Ans:$ cat data.csv|awk '{sum+=$4}END{print sum/NR}'


