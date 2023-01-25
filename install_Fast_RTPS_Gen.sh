#clone Fast-RTPS-Gen 1.0.4:
git clone --recursive https://github.com/eProsima/Fast-DDS-Gen.git -b v1.0.4 ~/Fast-RTPS-Gen 

# After that, modify the distribution version of gradle inside the gradle-wrapper.properties file to gradle-6.8.3 such that the distributionUrl file becomes as follows:
sed -i 's/5.6.2/6.8.3/g' ~/Fast-RTPS-Gen/gradle/wrapper/gradle-wrapper.properties 

# compile
cd ~/Fast-RTPS-Gen 
./gradlew assemble && sudo env "PATH=$PATH" ./gradlew install
