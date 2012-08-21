default:
	# Set default make action here
	# xcodebuild -target Tests -configuration MyMainTarget -sdk iphonesimulator build	

clean:
	-rm -rf build/*

test:
	GHUNIT_CLI=1 CFFIXED_USER_HOME=. xcodebuild -project meWorks.xcodeproj -sdk iphonesimulator5.1 -target tests -configuration Debug build