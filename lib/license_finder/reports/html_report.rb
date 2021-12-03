require 'redcarpet'

module LicenseFinder
  class HtmlReport < ErbReport
    private

    def template_name
      'html_report'
    end

    def bootstrap
      TEMPLATE_PATH.join('bootstrap.css').read
    end

    def markdown
      @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    end

    def render_markdown(content)
      markdown.render(content)
    end
  end
end
