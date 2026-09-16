LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

# Source - https://github.com/desktop-app/MicroTeX/tree/2b3141caa9b9c8f1142d269b79eb4dca5940e57a
LOCAL_MODULE := libclatexmath

# MEM_CHECK is for compiling with empty graphics backend
# -DHAVE_LOG=OFF
# -DGRAPHICS_DEBUG=ON
LOCAL_CFLAGS = $(APP_CFLAGS) -frtti -DMEM_CHECK=OFF -DHAVE_LOG=OFF
LOCAL_CPP_FEATURES += exceptions

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/src

# Fonts cmex10.ttf, cmmi10.ttf, cmr10.ttf, cmsy10.ttf, msam10.ttf, msbm10.ttf,
# special.ttf should be included in app
# Other fonts are unlikely to be needed as our converter right now shouldn't output
# commands that will use these fonts
# MicroTeX will not compile without some font defs, needs file editing
LOCAL_SRC_FILES += \
     src/atom/atom_basic.cpp \
     src/atom/atom_char.cpp \
     src/atom/atom_impl.cpp \
     src/atom/atom_matrix.cpp \
     src/atom/atom_row.cpp \
     src/atom/atom_space.cpp \
     src/atom/colors_def.cpp \
     src/atom/unit_conversion.cpp \
     src/box/box.cpp \
     src/box/box_factory.cpp \
     src/box/box_group.cpp \
     src/box/box_single.cpp \
     src/core/core.cpp \
     src/core/formula.cpp \
     src/core/formula_def.cpp \
     src/core/glue.cpp \
     src/core/localized_num.cpp \
     src/core/macro.cpp \
     src/core/macro_def.cpp \
     src/core/macro_impl.cpp \
     src/core/parser.cpp \
     src/fonts/alphabet.cpp \
     src/fonts/font_basic.cpp \
     src/fonts/font_info.cpp \
     src/fonts/fonts.cpp \
     src/utils/string_utils.cpp \
     src/utils/utf.cpp \
     src/utils/utils.cpp \
     src/res/builtin/formula_mappings.res.cpp \
     src/res/builtin/symbol_mapping.res.cpp \
     src/res/builtin/tex_param.res.cpp \
     src/res/builtin/tex_symbols.res.cpp \
     src/res/font/bi10.def.cpp \
     src/res/font/bx10.def.cpp \
     src/res/font/cmbsy10.def.cpp \
     src/res/font/cmbx10.def.cpp \
     src/res/font/cmbxti10.def.cpp \
     src/res/font/cmex10.def.cpp \
     src/res/font/cmmi10.def.cpp \
     src/res/font/cmmi10_unchanged.def.cpp \
     src/res/font/cmmib10.def.cpp \
     src/res/font/cmmib10_unchanged.def.cpp \
     src/res/font/cmr10.def.cpp \
     src/res/font/cmss10.def.cpp \
     src/res/font/cmssbx10.def.cpp \
     src/res/font/cmssi10.def.cpp \
     src/res/font/cmsy10.def.cpp \
     src/res/font/cmti10.def.cpp \
     src/res/font/cmti10_unchanged.def.cpp \
     src/res/font/cmtt10.def.cpp \
     src/res/font/dsrom10.def.cpp \
     src/res/font/eufb10.def.cpp \
     src/res/font/eufm10.def.cpp \
     src/res/font/i10.def.cpp \
     src/res/font/moustache.def.cpp \
     src/res/font/msam10.def.cpp \
     src/res/font/msbm10.def.cpp \
     src/res/font/r10.def.cpp \
     src/res/font/r10_unchanged.def.cpp \
     src/res/font/rsfs10.def.cpp \
     src/res/font/sb10.def.cpp \
     src/res/font/sbi10.def.cpp \
     src/res/font/si10.def.cpp \
     src/res/font/special.def.cpp \
     src/res/font/ss10.def.cpp \
     src/res/font/stmary10.def.cpp \
     src/res/font/tt10.def.cpp \
     src/res/reg/builtin_font_reg.cpp \
     src/res/reg/builtin_syms_reg.cpp \
     src/res/sym/amsfonts.def.cpp \
     src/res/sym/amssymb.def.cpp \
     src/res/sym/base.def.cpp \
     src/res/sym/stmaryrd.def.cpp \
     src/res/sym/symspecial.def.cpp \
     src/latex.cpp \
     src/render.cpp
#    src/samples/mem_check_main.cpp
include $(BUILD_STATIC_LIBRARY)
