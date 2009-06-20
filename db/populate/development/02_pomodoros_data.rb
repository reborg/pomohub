require File.join(File.dirname(__FILE__), "..", "..", "populate.rb")

30.times { Pomodoro.make(:user => @test_user) }
@normal_users.each {|user| Sham.a_random_from_10_to_100.times { Pomodoro.make(:user => user)}}
