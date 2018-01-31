# Compile & Link Parameters
CC = gcc

# Path of dummy .so file: Use your dummy .so file path that specified on install step.
# (more details: [https://developers.curvsurf.com] Documentation > Installation)
DUMMY_PATH = ./lib_import/x86_64

ADDITIONAL_INCLUDE_PATH = 
ADDITIONAL_LIB_PATH = -L$(DUMMY_PATH)

CFLAGS = -Wno-implicit-function-declaration $(ADDITIONAL_INCLUDE_PATH)
LIBS = $(ADDITIONAL_LIB_PATH) -lm -lX11 -lGL -lFindSurface

# Output Parameters
TARGET = SimpleGUI
OBJDIR = obj

# SOURCE FILES
VPATH = src:src/glwin:src/glwin/xgl
SOURCES = \
main.c \
glWinX.c \
XEvtProc.c \
glmain.c \
timer.c \
glutil.c \
floatMatrix.c \
floatVector3.c \
common_util.c \
camera.c \
renderObjectFactory.c \
pointCloudRenderer.c \
dataManager.c \
customMeshRenderer.c \
opt_parser.c \
xyz_reader.c \
sceneManager.c

OBJS = $(patsubst %.c, $(OBJDIR)/%.o, $(SOURCES))

# Define make rules
all: $(OBJDIR) $(TARGET)

$(OBJDIR):
	@mkdir -p $@

$(OBJDIR)/%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET): $(OBJS)
	@gcc -o $@ $^ $(LIBS)

clean:
	@rm -rf $(OBJDIR)/*.o $(TARGET)
