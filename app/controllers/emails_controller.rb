class EmailsController < ApplicationController
  def index 
    @emails = Email.order(id: :asc)
  end
 
  def toggle 
  @email = Email.find(params[:id])
  @email.update(viewed: params[:viewed])
  render json: { message: "Success" }
  end

  def destroy 
    @email = Email.find(params[:id])
    @email.destroy
    redirect_to emails_path
  end

  def new 
    @email = Email.new
  end
  def create 
    @email = Email.new(email:Faker::Internet.email, object:Faker::Games::Pokemon.name, body:Faker::Lorem.sentences)
    @email.save!
  end

  def show 
    @email=Email.find(params[:id])
  end   

private

def emails_params 

  params.require(:email).permit(:body,:email,:object)

end

end
