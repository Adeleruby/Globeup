import "bootstrap";
import 'select2/dist/css/select2.css';
import { initSelect2 } from './components/init_select2';
import { search } from './components/search';
import { eventListen } from './components/search';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from './components/init_mapbox';
// import { submitOnEnter } from './components/chat';

// submitOnEnter();
// initMapbox();
// initSelect2();
// search();
// eventListen();

const url = window.location;

$(document).ready(() => {
  if (url.pathname === '/') { console.log('Yeah'); }
  if (/\/users\/[1-9]*/.test(url.pathname)) { console.log('Regex bro'); }
})
