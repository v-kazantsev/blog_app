class MemosController < ApplicationController
  layout 'memo', only: [:index]
  before_action :set_memo, only: [:edit,:update,:destroy, :show]
  def index
    @memos = Memo.all
  end
  def new
    @memo = Memo.new
  end
  def show
  end
  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memos_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @memo.update(memo_params)
      redirect_to memos_path
    else
      render :edit
    end
  end
  def destroy
    @memo.delete
    redirect_to memos_path
  end
  private
  def memo_params
    params.require(:memo).permit(:title, :body)
  end
  def set_memo
    @memo = Memo.find(params[:id])
  end
end
