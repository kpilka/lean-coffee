# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery-ui
#= require jquery_ujs
#= require foundation
#= require turbolinks
#= require angular
#= require pusher
#= require pusher-angular
#= require angular-animate
#= require angular-resource
#= require angular-dragdrop
#= require lodash
#= require angular/config
#= require_tree .

window.pusherClient   = new Pusher 'PUSHER_KEY', cluster: 'eu'
window.pusherSocketId = null

pusherClient.connection.bind 'connected', =>
  window.pusherSocketId = pusherClient.connection.socket_id

() ->
  $(document).foundation()
