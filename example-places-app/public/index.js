var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      place: [],
      newPlace: {name: "", address: ""},
      errors: []
    };
  },
  created: function() {
    axios.get("/place")
      .then(function(response) {
        this.places = response.data;
      }.bind(this));
  },
var router = new VueRouter({
  routes: [{ path: "/", component: HomePage }],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});