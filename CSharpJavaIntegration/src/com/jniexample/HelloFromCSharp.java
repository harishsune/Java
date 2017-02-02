package com.jniexample;

import java.io.File;
import java.io.IOException;

import net.sf.jni4net.Bridge;
import system.Console;

public class HelloFromCSharp {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		Bridge.setVerbose(true);
		Bridge.init();
		File cSharpAssemblyPath=new File("ClassLibrary1.j4n.dll");
		Bridge.LoadAndRegisterAssemblyFrom(cSharpAssemblyPath);
		classlibrary1.Class1 onewClass=new classlibrary1.Class1();
		String myName=onewClass.GetName();
		Console.Write(myName);
		
	}

}
