package gecko

class TietoIssue {

	gecko.Company company
	gecko.CompanyContact companyContact

    	static constraints = {
		issueProduct(maxsize:25)
		issueDescription(maxsize:1500)
		issueSummary(maxsize:75, blank:false)
	}

	String issueProduct
	String issueDescription
	String issueSummary


}
