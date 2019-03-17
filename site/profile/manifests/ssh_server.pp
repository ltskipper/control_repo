class profile::ssh_server {
  package {'openssh-server':
      ensure => present,
  }
  service { 'sshd':
      ensure => 'running',
      enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
      ensure => present,
      user   => 'root',
      type   => 'ssh-rsa',
      key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNBWl65dOOVVUTTBldi4myqVll0MF87yDdpdsf2xzHYoRdPo110FLgfnDpP78dVSkl9V1pZ6rm2OZ9jdW7HTJTg5qh8+SZjEsW3JQP6p+8BAtZvAGtqHmBNisFPltUjcSgn7QwGpIlFE/+unU9CqC8NVvgH6fpNMdqxGFz6DJBPHkY2ej5zgSU7eQHyBHOzHwZKaBIkOHNekX+8soMDpDhLND/mV7tNKHnIwHyK/qY5uCsh5G92yJVKwPZhM73fUoTuKUHfb2mQanlSHyJInNj/NKzxD5ORD0RzB9jPaKBNajXGvUrUY/JEXIKyDFZE1rrPdNlpwkugf9NdGzVZmGb',
  }
}
