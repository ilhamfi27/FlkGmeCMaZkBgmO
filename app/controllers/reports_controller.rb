class ReportsController < ApplicationController
  skip_before_action :user_has_signed_in
  before_filter :report_data, only: [:download]

  def index; end

  def download
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "report",
               viewport_size: '1280x1024',
               margin: { top: 10, bottom: 0, left: 0, right: 0 },
               layout: 'pdf.html.slim',
               orientation: 'Landscape',
               # header: { spacing: 6, html: { template: 'report/report_header', layout: 'pdf.html.slim' } },
               locals: { data: @registration },
               show_as_html: params[:as_html]
      end
    end
  end

  private
  	def report_data
  		@registration = Registration.all
  	end
end
