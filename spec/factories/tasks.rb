FactoryBot.define do
                        factory :task do
                                                name { 'テストを書く' }
                                                description { 'RSPEC&Factorubotを準備する' }
                                                user
                        end
end