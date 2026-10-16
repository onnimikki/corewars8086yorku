1. Download release 6 from https://github.com/codeguru-il/corewars8086/releases
2. Copy il subfolder to src in IntelliJ
3. Download four jar files
 a. Guava: https://mvnrepository.com/artifact/com.google.guava/guava/33.7.2-jre (get bundle)
 b. Tongfei: https://mvnrepository.com/artifact/me.tongfei/progressbar/0.10.2 (get jar)
 c. Common Maths (3) : https://mvnrepository.com/artifact/org.apache.commons/commons-math3/3.6.1 (should upgrade to 4)
 d. Google Options: https://mvnrepository.com/artifact/com.github.pcj/google-options/1.0.0 (has vulneratbilities)

Github info:

https://github.com/onnimikki/corewars8086a.git

…or create a new repository on the command line
echo "# corewars8086a" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/onnimikki/corewars8086a.git
git push -u origin main

…or push an existing repository from the command line
git remote add origin https://github.com/onnimikki/corewars8086a.git
git branch -M main
git push -u origin main

