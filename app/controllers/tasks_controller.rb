class TasksController < ApplicationController
    def tasks
        @task = Task.new
    end
end
