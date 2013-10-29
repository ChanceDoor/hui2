class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :qq, :phone, :location, :gender, :age, :job, :name, :email, :password, :password_confirmation, :remember_me
  has_many :conferences

  validates :name,presence:{message:'昵称不可为空！'}
  validates :email,presence:{message:'邮箱不可为空！'}
  validates :password,presence:{message:'密码不可为空！'}
  validates :name,uniqueness:{message:'昵称已注册!',case_sensitive: true}

  def as_json(options={})
      super.as_json(options).merge({:errors => "0"}).merge({:error => "0"})
  end
end
