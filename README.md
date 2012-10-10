Basis
=====

Haxe Native UI Library

The goal of basis is to provide cross platform access to native UI components.

**Supported platforms**

* iOS
* Android

iOS
To access native components a native extension is used to both create views and handle events.

Android
The android target must use a custom version of NME found here:
	https://github.com/Randonee/NME
To compile use the target -android_empty
	haxelib run nme build build.nmml -android_empty


To build the iOS native extension run these commands from extension/basis/project

	haxelib run hxcpp Build.xml -Diphonesim
	haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARMV7
	haxelib run hxcpp Build.xml -Diphoneos


**License:**

    Unless indicated otherwise, this code was created by Aaron Spjut and
    provided under a MIT-style license. 
    Copyright (c) Aaron Spjut. All rights reserved.

    Permission is hereby granted, free of charge, to any person obtaining a 
    copy of this software and associated documentation files (the "Software"),
    to deal in the Software without restriction, including without limitation
    the rights to use, copy, modify, merge, publish, distribute, sublicense,
    and/or sell copies of the Software, and to permit persons to whom the
    Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
    THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.