class UserController < ApplicationController
  def index
  end

  def companies
    @companies = Company.find :all, :conditions => ['name like ?',"%#{params[:search]}%"]
  end

  def data_loader
    @company = Company.find_by_name params[:id]
    render :update do |page|
      page.replace_html 'preFillDiv', :partial => 'autocomplete_form'
    end
  end

  def create
    temp = Company.find_by_name params[:company][:name]
    if temp.nil?
      company = Company.new(params[:company])
      company.save
      company_id = company.id
    else
      company_id = temp.id
    end
    user = User.new(params[:user])
    user.company_id = company_id
    user.save
    redirect_to :action => 'index'
  end
end
