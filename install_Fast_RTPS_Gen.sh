#clone Fast-RTPS-Gen 1.0.4:

#git clone --recursive https://github.com/eProsima/Fast-DDS-Gen.git -b v1.0.4 ~/Fast-RTPS-Gen \
#&& cd ~/Fast-RTPS-Gen/gradle/wrapper

# After that, modify the distribution version of gradle inside the gradle-wrapper.properties file to gradle-6.8.3 such that the distributionUrl file becomes as follows:

#distributionUrl=https\://services.gradle.org/distributions/gradle-6.8.3-bin.zip

# Now you should run the following commands:

cd ~/Fast-RTPS-Gen 
./gradlew assemble && sudo env "PATH=$PATH" ./gradlew install
