with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2006 (20060522-34)";
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_tttlab" & Ascii.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure Break_Start;
   pragma Import (C, Break_Start, "__gnat_break_start");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#689070cf#;
   u00002 : constant Version_32 := 16#74e2bfdb#;
   u00003 : constant Version_32 := 16#ad6baf6a#;
   u00004 : constant Version_32 := 16#9c7dd3ea#;
   u00005 : constant Version_32 := 16#13f3f8bd#;
   u00006 : constant Version_32 := 16#d2d12263#;
   u00007 : constant Version_32 := 16#ed86bd6f#;
   u00008 : constant Version_32 := 16#b1e37a4b#;
   u00009 : constant Version_32 := 16#0eb61a8b#;
   u00010 : constant Version_32 := 16#ae39ddd3#;
   u00011 : constant Version_32 := 16#38d6a6b2#;
   u00012 : constant Version_32 := 16#ccb45172#;
   u00013 : constant Version_32 := 16#266c3e53#;
   u00014 : constant Version_32 := 16#d4faec2d#;
   u00015 : constant Version_32 := 16#53011ec6#;
   u00016 : constant Version_32 := 16#93682d6b#;
   u00017 : constant Version_32 := 16#14796080#;
   u00018 : constant Version_32 := 16#60f858a1#;
   u00019 : constant Version_32 := 16#cf3f0d8c#;
   u00020 : constant Version_32 := 16#36281ef1#;
   u00021 : constant Version_32 := 16#c8df6086#;
   u00022 : constant Version_32 := 16#423fa2a0#;
   u00023 : constant Version_32 := 16#407016ea#;
   u00024 : constant Version_32 := 16#726beeed#;
   u00025 : constant Version_32 := 16#ad4e6916#;
   u00026 : constant Version_32 := 16#1e1b7442#;
   u00027 : constant Version_32 := 16#833ea30c#;
   u00028 : constant Version_32 := 16#8b4fbf38#;
   u00029 : constant Version_32 := 16#fa27edb6#;
   u00030 : constant Version_32 := 16#9dc1a824#;
   u00031 : constant Version_32 := 16#ef1ec252#;
   u00032 : constant Version_32 := 16#f6b98164#;
   u00033 : constant Version_32 := 16#53743e56#;
   u00034 : constant Version_32 := 16#eef64802#;
   u00035 : constant Version_32 := 16#a69cad5c#;
   u00036 : constant Version_32 := 16#ff5b1296#;
   u00037 : constant Version_32 := 16#6b550625#;
   u00038 : constant Version_32 := 16#997e1bd7#;
   u00039 : constant Version_32 := 16#264aa8fc#;
   u00040 : constant Version_32 := 16#a18661d9#;
   u00041 : constant Version_32 := 16#adf8f9bd#;
   u00042 : constant Version_32 := 16#409fffcc#;
   u00043 : constant Version_32 := 16#5ad8a613#;
   u00044 : constant Version_32 := 16#700c9d7f#;
   u00045 : constant Version_32 := 16#59507545#;
   u00046 : constant Version_32 := 16#7175e34a#;
   u00047 : constant Version_32 := 16#808e35e2#;
   u00048 : constant Version_32 := 16#2d3db776#;
   u00049 : constant Version_32 := 16#7f2f3e68#;
   u00050 : constant Version_32 := 16#a8d17654#;
   u00051 : constant Version_32 := 16#fe8a229d#;
   u00052 : constant Version_32 := 16#e17f010b#;
   u00053 : constant Version_32 := 16#0a3f4443#;
   u00054 : constant Version_32 := 16#5ab66b29#;
   u00055 : constant Version_32 := 16#2a238523#;
   u00056 : constant Version_32 := 16#a04b2d0f#;
   u00057 : constant Version_32 := 16#6fc0da7b#;
   u00058 : constant Version_32 := 16#ca75b29d#;
   u00059 : constant Version_32 := 16#20461e4b#;
   u00060 : constant Version_32 := 16#f00d9b80#;
   u00061 : constant Version_32 := 16#57bd0411#;
   u00062 : constant Version_32 := 16#d6ddeb05#;
   u00063 : constant Version_32 := 16#6454300d#;
   u00064 : constant Version_32 := 16#293ff6f7#;
   u00065 : constant Version_32 := 16#4c71c8a9#;
   u00066 : constant Version_32 := 16#373bd87b#;
   u00067 : constant Version_32 := 16#2c1afd44#;
   u00068 : constant Version_32 := 16#63c7c118#;
   u00069 : constant Version_32 := 16#aa313fa6#;
   u00070 : constant Version_32 := 16#befa91e7#;
   u00071 : constant Version_32 := 16#e444e0c9#;
   u00072 : constant Version_32 := 16#2274d34a#;
   u00073 : constant Version_32 := 16#640b79d5#;
   u00074 : constant Version_32 := 16#9714d691#;
   u00075 : constant Version_32 := 16#2ea2be8b#;
   u00076 : constant Version_32 := 16#2977527a#;
   u00077 : constant Version_32 := 16#baf4953c#;
   u00078 : constant Version_32 := 16#56af4987#;
   u00079 : constant Version_32 := 16#5b130baa#;
   u00080 : constant Version_32 := 16#4c526528#;
   u00081 : constant Version_32 := 16#e47154c9#;
   u00082 : constant Version_32 := 16#5fc3f0ba#;
   u00083 : constant Version_32 := 16#4857b9e6#;
   u00084 : constant Version_32 := 16#e13c66a0#;
   u00085 : constant Version_32 := 16#27dda370#;
   u00086 : constant Version_32 := 16#4b6373ef#;
   u00087 : constant Version_32 := 16#6b0c614a#;
   u00088 : constant Version_32 := 16#b7140ae3#;
   u00089 : constant Version_32 := 16#af618d49#;
   u00090 : constant Version_32 := 16#834a325e#;
   u00091 : constant Version_32 := 16#0b6ed09c#;

   pragma Export (C, u00001, "tttlabB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "adaS");
   pragma Export (C, u00005, "ada__calendarB");
   pragma Export (C, u00006, "ada__calendarS");
   pragma Export (C, u00007, "ada__exceptionsB");
   pragma Export (C, u00008, "ada__exceptionsS");
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00011, "systemS");
   pragma Export (C, u00012, "system__soft_linksB");
   pragma Export (C, u00013, "system__soft_linksS");
   pragma Export (C, u00014, "system__parametersB");
   pragma Export (C, u00015, "system__parametersS");
   pragma Export (C, u00016, "system__secondary_stackB");
   pragma Export (C, u00017, "system__secondary_stackS");
   pragma Export (C, u00018, "system__storage_elementsB");
   pragma Export (C, u00019, "system__storage_elementsS");
   pragma Export (C, u00020, "system__stack_checkingB");
   pragma Export (C, u00021, "system__stack_checkingS");
   pragma Export (C, u00022, "system__exception_tableB");
   pragma Export (C, u00023, "system__exception_tableS");
   pragma Export (C, u00024, "system__htableB");
   pragma Export (C, u00025, "system__htableS");
   pragma Export (C, u00026, "system__tracebackB");
   pragma Export (C, u00027, "system__tracebackS");
   pragma Export (C, u00028, "system__unsigned_typesS");
   pragma Export (C, u00029, "system__wch_conB");
   pragma Export (C, u00030, "system__wch_conS");
   pragma Export (C, u00031, "system__wch_stwB");
   pragma Export (C, u00032, "system__wch_stwS");
   pragma Export (C, u00033, "system__wch_cnvB");
   pragma Export (C, u00034, "system__wch_cnvS");
   pragma Export (C, u00035, "interfacesS");
   pragma Export (C, u00036, "system__wch_jisB");
   pragma Export (C, u00037, "system__wch_jisS");
   pragma Export (C, u00038, "system__pure_exceptionsS");
   pragma Export (C, u00039, "system__traceback_entriesB");
   pragma Export (C, u00040, "system__traceback_entriesS");
   pragma Export (C, u00041, "system__arith_64B");
   pragma Export (C, u00042, "system__arith_64S");
   pragma Export (C, u00043, "system__os_primitivesB");
   pragma Export (C, u00044, "system__os_primitivesS");
   pragma Export (C, u00045, "interfaces__cB");
   pragma Export (C, u00046, "interfaces__cS");
   pragma Export (C, u00047, "ada__numericsS");
   pragma Export (C, u00048, "ada__text_ioB");
   pragma Export (C, u00049, "ada__text_ioS");
   pragma Export (C, u00050, "ada__streamsS");
   pragma Export (C, u00051, "ada__tagsB");
   pragma Export (C, u00052, "ada__tagsS");
   pragma Export (C, u00053, "interfaces__c_streamsB");
   pragma Export (C, u00054, "interfaces__c_streamsS");
   pragma Export (C, u00055, "system__crtlS");
   pragma Export (C, u00056, "system__file_ioB");
   pragma Export (C, u00057, "system__file_ioS");
   pragma Export (C, u00058, "ada__finalizationB");
   pragma Export (C, u00059, "ada__finalizationS");
   pragma Export (C, u00060, "system__finalization_rootB");
   pragma Export (C, u00061, "system__finalization_rootS");
   pragma Export (C, u00062, "system__finalization_implementationB");
   pragma Export (C, u00063, "system__finalization_implementationS");
   pragma Export (C, u00064, "system__restrictionsB");
   pragma Export (C, u00065, "system__restrictionsS");
   pragma Export (C, u00066, "system__string_ops_concat_3B");
   pragma Export (C, u00067, "system__string_ops_concat_3S");
   pragma Export (C, u00068, "system__string_opsB");
   pragma Export (C, u00069, "system__string_opsS");
   pragma Export (C, u00070, "system__stream_attributesB");
   pragma Export (C, u00071, "system__stream_attributesS");
   pragma Export (C, u00072, "ada__io_exceptionsS");
   pragma Export (C, u00073, "system__file_control_blockS");
   pragma Export (C, u00074, "ada__finalization__list_controllerB");
   pragma Export (C, u00075, "ada__finalization__list_controllerS");
   pragma Export (C, u00076, "system__img_intB");
   pragma Export (C, u00077, "system__img_intS");
   pragma Export (C, u00078, "system__string_ops_concat_5B");
   pragma Export (C, u00079, "system__string_ops_concat_5S");
   pragma Export (C, u00080, "system__string_ops_concat_4B");
   pragma Export (C, u00081, "system__string_ops_concat_4S");
   pragma Export (C, u00082, "system__val_intB");
   pragma Export (C, u00083, "system__val_intS");
   pragma Export (C, u00084, "system__val_unsB");
   pragma Export (C, u00085, "system__val_unsS");
   pragma Export (C, u00086, "system__val_utilB");
   pragma Export (C, u00087, "system__val_utilS");
   pragma Export (C, u00088, "system__case_utilB");
   pragma Export (C, u00089, "system__case_utilS");
   pragma Export (C, u00090, "system__memoryB");
   pragma Export (C, u00091, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.arith_64%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.htable%s
   --  system.htable%b
   --  system.img_int%s
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.pure_exceptions%s
   --  system.arith_64%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.secondary_stack%s
   --  system.img_int%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_ops%s
   --  system.string_ops%b
   --  system.string_ops_concat_3%s
   --  system.string_ops_concat_3%b
   --  system.string_ops_concat_4%s
   --  system.string_ops_concat_4%b
   --  system.string_ops_concat_5%s
   --  system.string_ops_concat_5%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  ada.exceptions.last_chance_handler%s
   --  system.soft_links%s
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%b
   --  system.secondary_stack%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.tags%s
   --  ada.streams%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.os_primitives%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.unsigned_types%s
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.finalization_implementation%s
   --  system.finalization_implementation%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  ada.finalization.list_controller%s
   --  ada.finalization.list_controller%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.file_io%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.val_int%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_int%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.tags%b
   --  ada.exceptions%b
   --  tttlab%b
   --  END ELABORATION ORDER

end ada_main;
