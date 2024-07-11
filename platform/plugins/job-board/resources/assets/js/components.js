/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

import ActivityLogComponent from './components/dashboard/ActivityLogComponent';
import PackagesComponent from './components/dashboard/PackagesComponent';
import PaymentHistoryComponent from './components/dashboard/PaymentHistoryComponent';

window.axios = require('axios');

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

vueApp.booting(vue => {
    vue.component('activity-log-component', ActivityLogComponent);
    vue.component('packages-component', PackagesComponent);
    vue.component('payment-history-component', PaymentHistoryComponent);
});