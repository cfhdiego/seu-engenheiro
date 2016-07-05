class SessionsController < ApplicationController
	
	before_action :block_access, except: [:destroy]
	def new
	end

  	def create
  		@usuario = Usuario.find_by(login: params[:session][:login].downcase)
    	if @usuario && @usuario.authenticate(params[:session][:password])
        	sign_in(@usuario)
        	redirect_to @usuario
    	else	
        	render 'new'
          flash[:alert] = "Senha ou Login Incorreto "
    	end   
  	end

  	def destroy
        sign_out
      	redirect_to root_url
    end
end
