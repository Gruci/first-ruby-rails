class HomeController < ApplicationController
    def index
    end
    
    def projects
    end
    
    def people
    end
    
    def evets
    end
    
    ##board
    def board_index
    @post = Post.all
    end

    def board_create
    @post = Post.new(
      email: params[:email],
      title: params[:title], 
      copy: params[:copy], 
      project: params[:project], 
      starter: params[:starter], 
      gather_date: params[:gather_date], 
      gather_end_date: params[:gather_end_date],
      activity_date: params[:activity_date], 
      activity_end_date: params[:activity_end_date],
      co_worker1: params[:co_worker1], 
      co_worker1_num: params[:co_worker1_num], 
      co_worker2: params[:co_worker2], 
      co_worker2_num: params[:co_worker2_num], 
      co_worker3: params[:co_worker3], 
      co_worker3_num: params[:co_worker3_num], 
      content: params[:content])
    @post.save
    redirect_to "/board_index"
    end
  
    def board_view
        @post = Post.find(params[:board_id])
    end

    def board_new
    end

    def board_edit
    end

    def board_destroy
    end
  
    def board_comment_create
        @comment = Comment.new(post_id: params[:post_id],content:params[:content])
        @comment.save
        redirect_to :back
    end
    
    ##ppl
    def ppl_index
        @costarter = Costarter.all
    end

    def ppl_create
        @costarter = Costarter.new(
          email: params[:email],
          title: params[:title], 
          copy: params[:copy], 
          project: params[:project], 
          starter: params[:starter], 
          content: params[:content])
        @costarter.save
        redirect_to "/ppl_index"
    end

    def ppl_new
    end

    def ppl_edit
    end

    def ppl_destroy
    end

    def ppl_view
        @costarter = Costarter.find(params[:ppl_id])
    end
    
    ##task
    def task_index
        @event = Event.all
    end

    def task_create
        @event = Event.new(
        email: params[:email],
        title: params[:title], 
        starter: params[:starter], 
        gather_date: params[:gather_date], 
        gather_end_date: params[:gather_end_date],
        activity_date: params[:activity_date], 
        activity_end_date: params[:activity_end_date],
        content: params[:content])
        @event.save
        redirect_to "/task_index"
    end

    def task_new
    end
    
    def task_edit
    end

    def task_destroy
    end

    def task_view
        @event = Event.find(params[:task_id])
    end
end
