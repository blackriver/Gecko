package gecko

class CompanyContact {

	gecko.Company company

    	static constraints = {
		contactName(blank:false, maxsize:25, unique:true)
		phoneNumber(maxsize:25)
		contactEmailAddress(email:true, blank:false)
	}

	String contactName
	String phoneNumber
	String contactEmailAddress

	String toString() {
		contactName
	}


}
