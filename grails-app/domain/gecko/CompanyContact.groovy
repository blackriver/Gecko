package gecko

class CompanyContact {

	static belongsTo = [company:gecko.Company]

	static	hasMany = [tietoIssue:gecko.TietoIssue]

	String contactLoginName
	String contactPassword
	String contactName
	String phoneNumber
	String contactEmailAddress


    static constraints = {
		contactLoginName(blank:false, maxsize:25, unique:true)
		contactPassword(password:true)
    	contactName(blank:false, maxsize:25)
		phoneNumber(maxsize:25)
		contactEmailAddress(email:true, blank:false)
	}

	String toString() {
		contactName
	}


}
