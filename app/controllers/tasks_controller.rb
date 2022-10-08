class TasksController < ApplicationController
    def tasks
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
      end

      def new
        @task = Task.new
      end

      def create
        @task = Task.new(taskparams)
        @task.save
        redirect_to task_path(@task)
      end

      private

      def taskparams
        params.require(:task).permit(:title, :details, :completed)
        
      end
end
