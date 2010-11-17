package gecko

class Company {

    	static constraints = {
		companyName(blank:false, maxsize:25, unique:true)
		addressLine1(blank:false, maxsize:25)
		addressLine2(maxsize:25)
		city(maxsize:25)
		county(maxsize:25)
		phoneNumber()
    	}

	String companyName
	String addressLine1
	String addressLine2
	String city
	String county
	String phoneNumber

	static	hasMany = [companyContact:gecko.CompanyContact]


    	String toString() {
    		companyName
    	}
}
