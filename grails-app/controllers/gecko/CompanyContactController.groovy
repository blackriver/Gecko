package gecko

class CompanyContactController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [companyContactInstanceList: CompanyContact.list(params), companyContactInstanceTotal: CompanyContact.count()]
    }

    def create = {
        def companyContactInstance = new CompanyContact()
        companyContactInstance.properties = params
        return [companyContactInstance: companyContactInstance]
    }

    def save = {
        def companyContactInstance = new CompanyContact(params)
        if (companyContactInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'companyContact.label', default: 'CompanyContact'), companyContactInstance.id])}"
            redirect(action: "show", id: companyContactInstance.id)
        }
        else {
            render(view: "create", model: [companyContactInstance: companyContactInstance])
        }
    }

    def show = {
        def companyContactInstance = CompanyContact.get(params.id)
        if (!companyContactInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'companyContact.label', default: 'CompanyContact'), params.id])}"
            redirect(action: "list")
        }
        else {
            [companyContactInstance: companyContactInstance]
        }
    }

    def edit = {
        def companyContactInstance = CompanyContact.get(params.id)
        if (!companyContactInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'companyContact.label', default: 'CompanyContact'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [companyContactInstance: companyContactInstance]
        }
    }

    def update = {
        def companyContactInstance = CompanyContact.get(params.id)
        if (companyContactInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (companyContactInstance.version > version) {
                    
                    companyContactInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'companyContact.label', default: 'CompanyContact')] as Object[], "Another user has updated this CompanyContact while you were editing")
                    render(view: "edit", model: [companyContactInstance: companyContactInstance])
                    return
                }
            }
            companyContactInstance.properties = params
            if (!companyContactInstance.hasErrors() && companyContactInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'companyContact.label', default: 'CompanyContact'), companyContactInstance.id])}"
                redirect(action: "show", id: companyContactInstance.id)
            }
            else {
                render(view: "edit", model: [companyContactInstance: companyContactInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'companyContact.label', default: 'CompanyContact'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def companyContactInstance = CompanyContact.get(params.id)
        if (companyContactInstance) {
            try {
                companyContactInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'companyContact.label', default: 'CompanyContact'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'companyContact.label', default: 'CompanyContact'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'companyContact.label', default: 'CompanyContact'), params.id])}"
            redirect(action: "list")
        }
    }
}
