class UserController < ApplicationController
  def index
  end

  def companies
    @companies = Company.find :all, :conditions => ['name like ?',"%#{params[:search]}%"]
  end

  def data_loader
    str_tokens = params[:id].split("-")
    @company = Company.find_by_name_and_address2(str_tokens[0].rstrip,str_tokens[1].lstrip)
    
    render :update do |page|
      page.replace_html 'preFillDiv', :partial => 'autocomplete_form'
    end
  end

  def create
    if params[:company][:id].nil?
      company = Company.new(params[:company])
      company.save
      company.users.create(params[:user])
    else
      user = User.new(params[:user])
      user.company_id = params[:company][:id]
      user.save
    end
    
    redirect_to :action => 'index'
  end
end
