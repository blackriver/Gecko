package gecko

class Company {

	static	hasMany = [companyContact:gecko.CompanyContact, tietoIssue:gecko.TietoIssue]

	String companyName
	String addressLine1
	String addressLine2
	String city
	String county
	String phoneNumber

    static constraints = {
		companyName(blank:false, maxsize:25, unique:true)
		addressLine1(blank:false, maxsize:25)
		addressLine2(maxsize:25)
		city(maxsize:25)
		county(maxsize:25)
		phoneNumber()
    	}

    String toString() {
    		companyName
    	}
}
