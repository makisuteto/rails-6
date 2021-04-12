class UsersController < ApplicationController
    # 1ページの表示数
  PER_PAGE = 20
  
  def index
  # ***** 以下を修正 *****
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page]).per(PER_PAGE)
  # ***** 以上を修正 *****
  end
end
