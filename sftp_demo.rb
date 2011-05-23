require 'net/ssh'
require 'net/sftp'
Net::SSH.start('server', 'username', 'password') do |ssh|
  ssh.sftp.connect do |sftp|
    Dir.foreach('.') do |file|
      puts file
    end
  end
end