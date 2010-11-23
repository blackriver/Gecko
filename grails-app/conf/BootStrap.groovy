
import grails.util.GrailsUtil


class BootStrap {

    def init = { 
    
     servletContext ->
    
    
    
     switch(GrailsUtil.environment){
      case "development":
        
        println "### Starting up - Development"
        
        def thornData = new gecko.Company(companyName:"ThornData", 
        								  addressLine1:"Line1",
        								  addressLine2:"Line2",
        								  city:"Sheffield",
        								  county:"Yorkshire",
        								  phoneNumber:"01142310413")
       
        def steveDelaney = new gecko.CompanyContact(contactLoginName:"blackriver",
                                                    contactPassword:"september13",
        								            contactName:"Steve Delaney",
        								            phoneNumber:"01142310413",
        								            contactEmailAddress:"steve.delaney@btinternet.com")
        								  
        def tietoIssue1 = new gecko.TietoIssue(issueProduct:"Summit", 
           								 issueSummary:"Another problem",
           								 issueDescription:"More and more problems folks!") 
       
                  								     								
        def tietoIssue2 = new gecko.TietoIssue(issueProduct:"Activate", 
           								 issueSummary:"Activate problem",
           								 issueDescription:"Funny table name") 
           								 
        steveDelaney.addToTietoIssue(tietoIssue1)
        steveDelaney.addToTietoIssue(tietoIssue2)
       
        thornData.addToCompanyContact(steveDelaney)
        thornData.addToTietoIssue(tietoIssue1)
        thornData.addToTietoIssue(tietoIssue2)
        thornData.save(failOnError: true)
        steveDelaney.save(failOnError: true)

      break

      case "production":
      break
    } // switch
    }
    
    
    def destroy = {
    }
}
