class RestaurentsController < ApplicationController
def index
@restaurents = Restaurent.all
end

def new
end

def create
end

def show
@restaurent = Restaurent.find(params[:id])
end

def edit
end

def update
end

def destroy
end

end
