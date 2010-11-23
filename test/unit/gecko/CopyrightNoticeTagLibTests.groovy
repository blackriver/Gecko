package gecko

import grails.test.*

class CopyrightNoticeTagLibTests extends TagLibUnitTestCase {
    
	def copyrightNoticeTagLib
	
	protected void setUp() {
        super.setUp()
    	copyrightNoticeTagLib = new CopyrightNoticeTagLib()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testThisYear() {

    	String expected = Calendar.getInstance().get(Calendar.YEAR)
    	assertEquals("the years don't match", expected, 
    				 copyrightNoticeTagLib.thisYear().toString())
  	}
    
}
