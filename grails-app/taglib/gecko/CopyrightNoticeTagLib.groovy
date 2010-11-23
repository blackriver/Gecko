package gecko

class CopyrightNoticeTagLib {
def thisYear = {
    out << Calendar.getInstance().get(Calendar.YEAR)
  }

  def copyrightNotice = { attrs, body ->
    out << "<div class='copyrightNotice'>"
    out << "&copy; ${attrs['startYear']} - ${thisYear()}, ${body()}"
    out << " All Rights Reserved."
    out << "</div>"
  }
}
