class PortfoliosController < ApplicationController
  layout 'album', only: [:index]
  before_action :set_portfolio, only: [:edit, :update, :destroy, :show]
  def index
    @portfolios = Portfolio.all
  end
  def new
    @portfolio = Portfolio.new
  end
  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolios_path, notice: "New portfolio created"
    else
      render :new, alert: "Something wrong"
    end
  end
  def show
  end
  def edit
  end
  def update
    if @portfolio.update(portfolio_params)
      redirect_to portfolios_path, notice: "Portfolio updated"
    else
      render :edit, alert: "Something wrong"
    end
  end
  def destroy
    @portfolio.delete
    redirect_to portfolios_path
  end
private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
