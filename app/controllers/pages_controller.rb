class PagesController < ApplicationController
  def index
    @users = User.all.page(params[:page]).per(3)
  end

  def search

    @listings = Listing.all
    session[:q] = {"name_eq_any"=>session[:name_eq_any],"school_eq_any"=>session[:school_eq_any],"region_eq_any"=>session[:region_eq_any],"age_eq_any"=>session[:age_eq_any],"price_perhour_eq_any"=>session[:price_perhour_eq_any]}


    # ransack検索
    @search = @listings.ransack(session[:q])
    @result = @search.result(distinct: true)

     #リスティングデータを配列にしてまとめる 
    @arrlistings = @result.to_a
  end

  def ajaxsearch

    @listings = Listing.all

    #リスティングデータを配列にしてまとめる 
    @arrlistings = @listings.to_a

  end

end
