class CommentsController < ApplicationController
    before_action :require_sign_in
    
    
    private
    
    def comment_params
        params.require(:comment).permit(:body)
    end
    
end
