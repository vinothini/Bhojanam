class RestaurentsController < ApplicationController
def index
@restaurents = Restaurent.all
end

def new
@restaurent = Restaurent.new
end

def create
@restaurent = Restaurent.new(params[:restaurent])

   if @restaurent.save
   flash[:notice] = "restaurent stored"
   redirect_to @restaurent  
   else
   render :action=>:new
   end
end

def show
@restaurent = Restaurent.find(params[:id])
end

def edit
@restaurent = Restaurent.find(params[:id])
end

def update
@restaurent = Restaurent.find(params[:id])

   if @restaurent.update_attributes(params[:restaurent])
   flash[:notice] = "restaurent updated"
   redirect_to @restaurent  
   else
   render :action=>:edit
   end

end

def destroy
@restaurent = Restaurent.find(params[:id])
@restaurent.destroy
redirect_to restaurents_path
end

end
