# Build Instructions  

**NOTE: This project is currently only tested on Ubuntu 20.04. It should work on other distros but no promises. If you
  choose to try it with another distro, you will most likely need to make some tweaks. Please do update if you get it working :)**

**First, Install All Dependencies:**  
``` sudo apt-get build-dep glfw3 ``` 

&emsp;&emsp;&emsp;if you get the error *'You must put some 'source' URIs in your sources.list'* do  
&emsp;&emsp;&emsp;```sudo sed -i -e 's/# deb-src/deb-src/' /etc/apt/sources.list```  

**and more dependencies**  
```sudo apt-get install libxxf86vm-dev libglu1-mesa-dev ```

**Make and CMake**  
```sudo apt install make cmake```

**Install GLFW3:**
- Navigate to [GLFW Website](https://www.glfw.org/download) and install Source Package then unzip in terminal
- Navigate to unzipped folder and run ```cmake -G "Unix Makefiles"```
- Next type ```make```
- Finally ```sudo make install```

**Run The Build Script**
- Navigate to SystemMonitor root directory and run   
```Build/build-linux.sh```

**If You are Still Getting Linker Errors**  
Read [this](https://stackoverflow.com/questions/17768008/how-to-build-install-glfw-3-and-use-it-in-a-linux-project). And if you are still getting linker errors...  
- First, read them and make sure you are not just missing a dependency, it will tell you
- Open an issue on GitHub or send something to me on Discord - whuty#3579