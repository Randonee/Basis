Basis
=====

Haxe Native Development (haxe 3 only)

The goal of Basis is to provide access to native APIs and allow easy building of projects. For example, in ios you would need an xcode project and in android you would need an android project. Basis will create all needed files then compile and run if wanted.
For an API example, in ios one would use UIView and in android one would use android.View along with layout xml. This is the same in Basis but everything is haxe.

Basis is the core haxelib which works with other haxlibs. 

Current haxelibs in development:

* [BasisApple](https://github.com/Randonee/BasisApple) (ios and osx)
* [BasisAndroid](https://github.com/Randonee/BasisAndroid)

Installation
----------------

run command:

	haxelib install basis
	
Install haxelibs for platforms you wish to build

	haxelib install basisApple
	haxelib install basisAndroid	

* You will also need tools specific to the platform you are building (android sdk, xcode...). See specific platform for more instruction.


	
Examples
----------------

There are examples for each target. See the other Basis haxelib targets bellow for examples.

* [BasisApple](https://github.com/Randonee/BasisApple)
* [BasisAndroid](https://github.com/Randonee/BasisAndroid)



Building From Source
----------------

1. Download each haxelib source (Basis, BasisApple, BasisAndroid)
2. Run command "ant install" from the root of the Basis directory
3. Run command "ant install" from both BasisApple and BasisAndroid

If your working on the core Basis code you will need to build Basis then the other haxelibs before using them.



Build file format (.basis extension)
----------------

Example

	<target name="main">
		<appName value="Example" />
		<source path="src" />
		<builddir path="build" />
		<target name="apple" type="Apple">
			<framework name="UIKit" />
			<framework name="Foundation" />
			<framework name="CoreGraphics" />
			<framework name="QuartzCore" />
			<target name="ipad">
				<os type="ios" />
				<simulator use="true" type="ipad"/>
				<main classpath="example.ApplicationMain" />
				<debug value="true" />
				<runWhenFinished value="true" />
			</target>
		</target>
	</target>

The build files work similar to CSS in that all tags apply to child targets.
In the example above the appName node would apply to the apple target and ipad target.
When a target is built each sub target (if any) will also be built.

Build xml Node Reference
----------------

**See platform specific haxelib for nodes specific to that haxelib**

Attributes are optional unless marked otherwise.

* target
	* Attributes
		* name (required)
			* The name of the target. This is what you will call from the command line. For example if you want to build the apple target: haxelib run basis build.basis apple
		* type
			* The haxelib that will build the target "apple" for BasisApple and "android" for BasisAndroid
* appName
	* Attributes
		* value
			* The name of the application		
* source
	* Attributes
		* path
			* A directory with haxe source to be included
* nativeSource
	* Attributes
		* path
			* A directory with native source to be included (objc, java...)
* builddir
	* Attributes
		* path
			* where the build output will go
* haxelib
	* Attributes
		* name
			* the name of a haxelib to include
* main
	* Attributes
		* classpath
			* the fill class path to the main class
* debug
	* Attributes
		* value
			* if "true" build debug build
* haxeArg
	* Attributes
		* value
			* haxe compiler arg. Example `<haxeArg value="-D spod_macro" />`
* runWhenFinished
	* Attributes
		* value
			* if true the app will be run after it is built
* asset
	* Attributes
		* path
			* path to an asset directory		
* includeSettings
	* An xml file that can include any of the setting nodes above. The settings in this file will be applied to the target the includeSettings node is a child of.
	* Attributes
		* path
			* path to a settings file

Example includeSettings file:

	<settings>
		<source path="path/to/src"/>
		<main classpath="com.package.Main"/>
	</settings>
			
			

**License:**

	Copyright (c) 2013 Basis Contributors
    Unless indicated otherwise, this code is provided under a MIT-style license. 

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
    
    
    
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/Randonee/Basis/trend.png)](https://bitdeli.com/free "Bitdeli Badge")