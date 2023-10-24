class StoreController < ApplicationController
    def index
        @store = current_user.store
    end

    def new
        @store = Store.new
    end

    def create
        debugger
        @store = current_user.build_store(store_params)
        if @store.save
            redirect_to store_index_path, notice: '新增成功'
        else
            flash.now[:alert] = '請檢查欄位'
            render :new
        end
    end

    def edit
        @store = current_user.store
    end

    def update
        @store = current_user.store
        if @store.update(store_params)
            redirect_to store_index_path, notice:'編輯成功'
        else
            flash.now[:alert] = '請檢查欄位'
            render :edit
        end
    end
    private

    def store_params
        params.require(:store).permit(:name, :phone, :address, :content)
    end
end
