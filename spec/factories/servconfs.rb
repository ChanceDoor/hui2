# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :servconf do
    title "MyString"
    starttime "2013-07-02 00:43:31"
    endtime "2013-07-02 00:43:31"
    location "MyString"
    body "MyText"
  end
end
