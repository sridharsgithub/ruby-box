require 'sinatra'

code = nil

get '/' do
	code = params[:code]
	if !code.nil?
		puts "code=#{code}"
		body "Box access code captured. Please return to your program to continue. You can close this window."
	end
end

after do
	puts body
	Process.kill 'TERM', Process.pid
end
