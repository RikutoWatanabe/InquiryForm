class ProblemMailer < ActionMailer::Base
  default from: "inquiry@inquiry.com"   # 送信元アドレス
  default to: "scroll.users@gmail.com"     # 送信先アドレス
 
  def received_email(problem)
    @problem = problem
    mail(:subject => 'お問い合わせを承りました')
  end
 
end