# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :conference do
    title "MyString"
    starttime "2013-07-02 00:37:09"
    endtime "2013-07-02 00:37:09"
    location "MyString"
    body "MyText"
    level ""
    user nil
  end
end
