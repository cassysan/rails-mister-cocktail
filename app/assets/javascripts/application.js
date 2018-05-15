// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

const modal = document.getElementById('myModal');
const trigger = document.getElementById('add-cocktail');
const span = document.getElementsByClassName("close")[0];


trigger.onclick = function() {
    modal.style.display = "block";


function toggleModal() {
        modal.classList.toggle("show-modal");
    }

trigger.addEventListener("click", toggleModal);
span.addEventListener("click", toggleModal);


