### Base SoC
---

## Why not just send a zip of the project?

Vivado projects store simulation, analysis, synthesis, implementation, and cached data all within the project directory. 95% of this data does not pertain to the original design and can cause the size of the project to explode, making utilities like source control and direct file sharing hard to use. Fortunately, Xilinx utilizes a scripting language called Tcl (Tool command language; or tickle) which essentially logs every single button press within Xilinx and makes it a command. From here, any project can be reconstructed from the Tcl script. 


## How to open the Vivado project

Clone or download this repository and extract `base-soc` to a usable place, otherwise initialize your own upstream branch from this clone. To open the project, launch Vivado. On the welcome screen, navigate to the top menu and go to **Tools** > **Run Tcl Script...** and navigate to `lab-base-master.tcl` in the root of the project directory that was cloned. This will reconstruct the base of the project. Now the block design needs to be recreated. Again, go to **Tools** > **Run Tcl Script...** and this time go to `base-soc.srcs/sources_1/bd/system/hw_handoff` and run the `system_bd.tcl` script. After the block design is complete, any modifications to the saved block design can be made. At which point, the same steps from the Lab 1 instructions: validate the design, create a HDL wrapper on the system, create a bitstream, and export the hardware. Now the SDK can be opened again.

## Opening the SDK projects

When SDK opens, go to **File** > **Import...** and choose "Existing projects into workspace". Navigate to the main project directory and select the `<project name>.sdk` folder. After selecting, a list of projects within that directory will be listed to import. Select all that may apply to the project. The project has now been restored to a usable state and can be flashed with the MicroBlaze bitstream and the compiled C code.


## Open the SDK project without Vivado

If you *are not* going to be making any changes to the hardware block design, you may skip the Vivado step entirely and open SDK. When prompted about a workspace, choose the `<project name>.sdk` folder in the project root. Do not choose to make this your default workspace. Now all the application projects will be loaded into SDK and the existing bitstream of the unaltered Vivado project can be loaded onto the FPGA.