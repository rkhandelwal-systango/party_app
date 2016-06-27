class PartiesController < ApplicationController
#has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
#validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
def new 
@parties = Party.new
end
def create
#@user = User.where(email: params[:user][:email], password: params[:user][:password]).first
#@parties = user.parties.build(party_params)
 @parties = Party.new(party_params)
   respond_to  do |f|
    if @parties.save
    f.html{ redirect_to index_path ,notice: "Your data has been entered"}
    else
    f.html{render action: "new"}
    end
   end
end

def index
@parties = Party.all
end	
def party_params
    params.require(:parties).permit(:title,:title,:no_of_person,:avatar,:venue )
  end
end
