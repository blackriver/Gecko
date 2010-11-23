package gecko

import grails.converters.JSON

class TietoIssueController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]


    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [tietoIssueInstanceList: TietoIssue.list(params), tietoIssueInstanceTotal: TietoIssue.count()]
    }

    def create = {
        def tietoIssueInstance = new TietoIssue()
        tietoIssueInstance.properties = params
        return [tietoIssueInstance: tietoIssueInstance]
    }

    def save = {
        def tietoIssueInstance = new TietoIssue(params)
        if (tietoIssueInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'tietoIssue.label', default: 'TietoIssue'), tietoIssueInstance.id])}"
            redirect(action: "show", id: tietoIssueInstance.id)
        }
        else {
            render(view: "create", model: [tietoIssueInstance: tietoIssueInstance])
        }
    }

    def show = {
        def tietoIssueInstance = TietoIssue.get(params.id)
        if (!tietoIssueInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tietoIssue.label', default: 'TietoIssue'), params.id])}"
            redirect(action: "list")
        }
        else {
            [tietoIssueInstance: tietoIssueInstance]
        }
    }

    def edit = {
        def tietoIssueInstance = TietoIssue.get(params.id)
        if (!tietoIssueInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tietoIssue.label', default: 'TietoIssue'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [tietoIssueInstance: tietoIssueInstance]
        }
    }

    def update = {
        def tietoIssueInstance = TietoIssue.get(params.id)
        if (tietoIssueInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (tietoIssueInstance.version > version) {
                    
                    tietoIssueInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'tietoIssue.label', default: 'TietoIssue')] as Object[], "Another user has updated this TietoIssue while you were editing")
                    render(view: "edit", model: [tietoIssueInstance: tietoIssueInstance])
                    return
                }
            }
            tietoIssueInstance.properties = params
            if (!tietoIssueInstance.hasErrors() && tietoIssueInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'tietoIssue.label', default: 'TietoIssue'), tietoIssueInstance.id])}"
                redirect(action: "show", id: tietoIssueInstance.id)
            }
            else {
                render(view: "edit", model: [tietoIssueInstance: tietoIssueInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tietoIssue.label', default: 'TietoIssue'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def tietoIssueInstance = TietoIssue.get(params.id)
        if (tietoIssueInstance) {
            try {
                tietoIssueInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'tietoIssue.label', default: 'TietoIssue'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'tietoIssue.label', default: 'TietoIssue'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'tietoIssue.label', default: 'TietoIssue'), params.id])}"
            redirect(action: "list")
        }
    }
    
}
