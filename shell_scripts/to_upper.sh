
#!/bin/sh

echo -n "Please let me know your name"
read name
#将变量name的值通过管道输出到tr命令，再由tr命令进行大小写转换后重新赋值给name变量。
name=`echo $name | tr [a-z] [A-Z]`
if [[ $name == "STEPHEN" ]];
then
    echo "Hello, Stephen."
else
    echo "You are not Sephen."
fi
