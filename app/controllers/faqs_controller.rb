class FaqsController < ApplicationController

  def index
    @faqs = Faq.all
    render template: "faqs/index"
  end

  def show
    @faq = Faq.find_by(id: params[:id])
    render template: 'faqs/show'
  end
end
