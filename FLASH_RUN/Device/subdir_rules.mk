################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Device/%.obj: ../Device/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"F:/Software/Develop/Compiler/CCS/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu0 --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/C2000Ware/include" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/App/inc" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/Bsp" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/C2000Ware" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/Device" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/C2000Ware/inc" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/C2000Ware/ccs/Debug" --include_path="F:/Software/Develop/Compiler/CCS/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=Debug --define=_FLASH -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi --preproc_with_compile --preproc_dependency="Device/$(basename $(<F)).d_raw" --obj_directory="Device" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Device/%.obj: ../Device/%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"F:/Software/Develop/Compiler/CCS/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla2 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu0 --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/C2000Ware/include" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/App/inc" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/Bsp" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/C2000Ware" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/Device" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/C2000Ware/inc" --include_path="F:/Software/Develop/Compiler/CCS/Data/workspace_1/CODE/280049_Study/C2000Ware/ccs/Debug" --include_path="F:/Software/Develop/Compiler/CCS/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --define=Debug --define=_FLASH -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=coffabi --preproc_with_compile --preproc_dependency="Device/$(basename $(<F)).d_raw" --obj_directory="Device" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


