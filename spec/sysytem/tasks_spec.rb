require 'rails_helper'

describe 'タスク管理機能' , type: :system do
                        describe 'タスク一覧表示' do
                                                before do
                                                                        user_a = FactoryBot.create(:user)
                                                                        FactoryBot.create(:task, name: '最初のタスク', user: user_a)
                                                end

                                                context 'ユーザーがログインしているとき' do
                                                                        before do
                                                                                                visit login_path
                                                                                                fill_in 'user[email]', with:'a@example.com'
                                                                                                fill_in 'パスワード', with: 'password'
                                                                                                click_button 'ログインする'
                                                                        end

                                                                        it 'ユーザーAが作成したタスクが表示される' do
                                                                                                expect(page).to have_content '最初のタスク'
                                                                        end
                                                end
                        end
end