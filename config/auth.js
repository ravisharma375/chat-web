var express = require("express");
var router = express.Router();
var http = require("http").Server(router);
var io = require("socket.io")(http);
module.exports = {
  ensureAuthenticated: function(req, res, next) {
    if (req.isAuthenticated()) {
      return next();
    }
    req.flash("error_msg", "Please log in to view that resource");
    res.redirect("/users/login");
  },
  forwardAuthenticated: function(req, res, next) {
    if (!req.isAuthenticated()) {
      return next();
    }

    res.redirect("/dashboard");
  }
};
