class TransactionRecordsController < ApplicationController
  before_action :authenticate_user! # Ensure the user is authenticated

  def index; end
  def show; end

  def new
    @category = Category.find(params[:category_id])
    @transaction_record = TransactionRecord.new
  end

  def create
    @category = Category.find(params[:category_id])
    @transaction_record = @category.transaction_records.new(transaction_params)
    @transaction_record.user = current_user

    if @transaction_record.save
      redirect_to category_path(@category), notice: 'Transaction Record was successfully created'
    else
      render :new, status: 422
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @transaction_record = TransactionRecord.find(params[:id])
    @transaction_record.destroy
    redirect_to category_path(@category), notice: 'Transaction record was successfully deleted.'
  end

  private

  def transaction_params
    params.require(:transaction_record).permit(:name, :amount, :category_id)
  end
end
