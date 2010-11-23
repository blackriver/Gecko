package gecko

class TietoIssue {

	static belongsTo = [company:gecko.Company]

	gecko.CompanyContact companyContact

	String issueProduct
	String issueDescription
	String issueSummary

    static constraints = {
		issueSummary(maxsize:75, blank:false)
		issueDescription(maxsize:1500)
		issueProduct(maxsize:25)
	}



}
