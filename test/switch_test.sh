. ./test/helper.sh

function test_chswift_reset() {
	chswift 1.2
	chswift_reset
	assertEquals "wrong version" "$VERSION_1_1" "`swift --version|head -n 1`"
}

function test_chswift_switch() {
	chswift 1.2
	assertEquals "wrong version" "$VERSION_1_2" "`swift --version|head -n 1`"
}

SHUNIT_PARENT=$0 . $SHUNIT2