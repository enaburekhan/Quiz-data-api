class QuizDataController < ApplicationController
  before_action :authorize
  before_action :find_quiz_data, only: %i[show update destroy]

  def index
    @quiz_data = current_user.quiz_data

    render json: @quiz_data
  end

  def show
    render json: @quiz_data
  end

  def create
    @quiz_data = current_user.quiz_data.build(quiz_data_params)

    if @quiz_data.save
      render json: @quiz_data, status: :created
    else
      render json: @quiz_data.errors, status: :unprocessable_entity
    end
  end

  def update
    if @quiz_data.update(quiz_data_params)
      render json: @quiz_data
    else
      render json: @quiz_data.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @quiz_data.destroy
    render json: { message: 'QuizData deleted' }, status: :ok
  end

  private

  def find_quiz_data
    @quiz_data = current_user.quiz_data.find_by(id: params[:id])
    render json: { failure: "QuizData doesn't exist." }, status: :not_found unless @quiz_data
  end

  def quiz_data_params
    params.permit(:founder_name, :email, :country, :gender, :race_of_founder, :text_box, :conscious_beauty_credentials,
                  :user_id)
  end
end
