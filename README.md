# SystemMonitor
Simple C++ GUI application to track system information such as:
  - CPU Temperature
  - CPU Fan RPM
  - GPU Temp
  - GPU Fan RPM
  - ...

# GUI Library Used
[imgui](https://github.com/ocornut/imgui)

Going to try imgui out and see how it works. Looks interesting and 
have heard good things

# Usage
Will update once I write some code...

# Investigation In Reading CPU Temps for AMD
[CoreTemp.com](https://www.alcpu.com/CoreTemp/howitworks.html)  
[OverclockThread](https://www.overclock.net/threads/amd-temp-information-and-guide.1128821/)  
[OpenHardwareMonitor](https://openhardwaremonitor.org/) 

This one could be important, particularly *SB-TSI Protocol*   
[AMDOpenSourceRegisterReference](https://developer.amd.com/wp-content/resources/56255_3_03.PDF) 

**How CPU Temps are read in AMD chips**  
According to CoreTemp, "AMD processors report the temperature via a special  
register in the CPU's northbridge. Core Temp reads the value from the register  
and uses a formula provided by AMD to calculate the current temperature.The formula  
for the Athlon 64 series, early Opterons and Semprons (K8 architecture) is: **'Core Temp = Value - 49'**.  
For the newer generation of AMD processors like Phenom, Phenom II, newer Athlons,  
Semprons and Opterons (K10 architecture and up), and their derivatives, there is a different formula: **'CPU Temp* = Value / 8'**.  

*CPU Temp is because the Phenom\Opteron (K10) have only one sensor per package, meaning there is only one reading per processor.
