# FindSurface-Samples / SimpleGUI / libFindSurface / Readme.md
**Curv*Surf* FindSurface™ SDK** Samples - SimpleGUI

1. Download GLEW windows binaries at [here](http://glew.sourceforge.net/).

2.a. Unzip and put the contents to this directory.

Make sure that the files are located as follows:

- For 32-bits platforms:
	- vs14\3rdparty\glew\bin\Win32\glew32.dll
	- vs14\3rdparty\glew\include\GL\glew.h
	- vs14\3rdparty\glew\include\GL\glxew.h
	- vs14\3rdparty\glew\include\GL\wglew.h
	- vs14\3rdparty\glew\lib\Win32\glew32.lib\

- For 64-bits platforms:
	- vs14\3rdparty\glew\bin\x64\glew32.dll
	- vs14\3rdparty\glew\include\GL\glew.h
	- vs14\3rdparty\glew\include\GL\glxew.h
	- vs14\3rdparty\glew\include\GL\wglew.h
	- vs14\3rdparty\glew\lib\x64\glew32.lib

2.b. Or change the library paths in SimpleGUI project settings (SimpleGUI.vcxproj) into the corresponding paths that your files are located.