#!/bin/bash
cd /root/.jenkins/workspace/Hello\ Jenkins
ln -s /usr/local/apache-maven-3.6.3/bin/mvn /usr/bin/mvn
mvn clean install package
test_id=`ps -ef|grep test|grep -v "grep"|awk '{print $2}'`
echo $test_id
for testid in $test_id
do
    kill -9 $testid
    echo "killed $testid"
done
cd /mnt
rm -rf test-0.0.1-SNAPSHOT.jar
cd /root/.jenkins/workspace/Hello\ Jenkins/target
cp test-0.0.1-SNAPSHOT.jar /mnt
cd /mnt
./start.sh

