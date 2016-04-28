// Rails Frameworks
//=require jquery
//require jquery.turbolinks
//=require jquery_ujs
//require turbolinks

// PlugIns
//=require jquery.mask.min

// Theme (CreativeTim)
//= require creative-tim/paper_dashboard/bootstrap.min
//= require creative-tim/paper_dashboard/bootstrap-checkbox-radio
//= require creative-tim/paper_dashboard/bootstrap-notify
//= require creative-tim/paper_dashboard/chartist.min
//= require creative-tim/paper_dashboard/demo
//= require creative-tim/paper_dashboard/paper-dashboard

// App Files
//= require_tree ./app

function setup() {
    // setup masks
    if($('.numeric').length) $('.numeric').mask('9999999999')
}

$(setup);
$(document).on('page:load', setup);