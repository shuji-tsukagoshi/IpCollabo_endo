class BlogsController < ApplicationController
    def index # 一覧画面　たい焼きをお客さんに渡す人　アクション
        @blogs = Blog.all
    end

    def new	#注文を受ける人
    	@blog = Blog.new
    end

    def create #たい焼きを作る人
      @blog = Blog.new(blog_params)
      @blog.save
      redirect_to'/blogs'#どこのページに飛ぶのか 商品を渡すのをお願いする
    end

    private #↓　全てが反映される
      def blog_params #ストロングパラメータ
        params.require(:blog).permit(:title, :body, :suthor)
      end

end
