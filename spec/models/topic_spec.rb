require 'rails_helper'
RSpec.describe Topic, type: :model do

    context "データが正しく保存される" do
        before do
            @topic = Topic.new
            @user = User.new
            @user.email = "a@a"
            @user.password = "aaaaaa"
            @user.save
            @topic.title = "Hello"
            @topic.body = "おはようございます。"
            @topic.user_id = @user.id
            @topic.save
        end
        it "全て入力してあるので保存される" do
            expect(@topic).to be_valid
        end
    end
end
