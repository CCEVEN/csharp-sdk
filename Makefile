build-and-test:

	#mkdir bin

	cp tools/net40/Newtonsoft.Json.dll bin
	cp tools/net40/nunit.framework.dll bin
	cp tools/files/1.txt bin
	cp tools/files/1.jpg bin

	xbuild src/Qiniu.sln

	nunit-console bin/Qiniu.UnitTest.dll
