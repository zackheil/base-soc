connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty A7-35T 210319AE169CA"} -index 0
loadhw C:/Users/zacharyheil/Desktop/ES/lab1-solution/base-soc/base-soc.sdk/system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty A7-35T 210319AE169CA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty A7-35T 210319AE169CA"} -index 0
dow C:/Users/zacharyheil/Desktop/ES/lab1-solution/base-soc/base-soc.sdk/hello-world/Debug/hello-world.elf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty A7-35T 210319AE169CA"} -index 0
con
