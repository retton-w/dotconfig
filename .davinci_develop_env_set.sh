# COMMON
ROOT=/opt

# Filesystem for nfs
FILESYS_ROOT=$WORKDIR_ROOT/filesys
export MVL4FS=$FILESYS_ROOT/mvl4fs
export MVL4BUSYBOX=$FILESYS_ROOT/mvl4busybox
export MVL5FS=$FILESYS_ROOT/mvl5fs
export MVL5BUSYBOX=$FILESYS_ROOT/mvl5ramdisk/mvl5busybox
export MVL5BUSYBOXHDA1=$FILESYS_ROOT/mvl5ramdisk/mvl5busybox.hda1

# Tools
TOOLS_ROOT=$ROOT/develop/davinci
ARMLINUX=$TOOLS_ROOT/CodeSourcery/Sourcery_G++_Lite

TOOLS_ROOT_MVL5=$TOOLS_ROOT/mv_pro_5.0
TOOLS_ROOT_MVL4=$TOOLS_ROOT/mv_pro_4.0
MVLTOOL_RELATIVE_PATH=montavista/pro/devkit/arm/v5t_le
export MVL5TOOL=$TOOLS_ROOT_MVL5/$MVLTOOL_RELATIVE_PATH
export MVL4TOOL=$TOOLS_ROOT_MVL4/$MVLTOOL_RELATIVE_PATH

PATH="$ARMLINUX/bin:$MVL5TOOL/bin:$PATH"

export DVSDK365=$TOOLS_ROOT/dvsdk_2_10_01_18

# DVEVM
DVEVM_ROOT=$TOOLS_ROOT/dvevm_1_20
DSPLINK=$DVEVM_ROOT/dsplink_1_30_08_02/packages/dsplink
export DVEVM_ROOT
export DSPLINK

alias mvman="MANPATH=$MVL4TOOL/montavista/pro/man man"
alias mvinfo="MANPATH=$MVL4TOOL/montavista/pro/info info"

CG_TOOLS=$DVEVM_ROOT/cg6x_6_0_14
export CG_TOOLS

PATH="$CG_TOOLS/bin:$PATH"

#export MVL5KERNEL=~/ldczn/kernel

