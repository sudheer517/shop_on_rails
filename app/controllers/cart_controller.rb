# encoding: utf-8
class CartController < ApplicationController
  def login
    redirect_to :action => :log
  end
 def pay
	
 end
 def registration
	
 end
	

 

  def add
  @cart = Cart.new
   @cart = Cart.new(params[:id])
   @cart.save
   id = params[:id]
   cart = session[:cart] ||= {}
   cart[id] = (cart[id] || 0) + 1
        
    redirect_to :controller => :cart, :action => :index
  end
  


  def delete
  @cart = Cart.find(:params[:id])
  @cart.delete
  
  session[:cart] = nil
  redirect_to :controller => :cart, :action => :index
  
  #respond_to do |format|
  #  format.html { redirect_to item_url,
    #notice: 'Your cart is currently empty' }
   # format.json { head :no_content }
 # end
  
  #@cart = find_cart
  #@cart.remove_cart_item(params[:id])
  
    #@item = Item.find(params[:id])
    #@item.delete
	#redirect_to :controller =>"items", :action => :index

	
	

    
  end
  
    #id = @params[:id]
    #session[:cart].items.delete(id)
    #redirect_to :action => :index
  
  #end
     

  def index

    @cart = session[:cart] || {}
  end
  

  
 end