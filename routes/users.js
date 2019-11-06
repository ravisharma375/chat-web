const express = require("express");
const router = express.Router();
const bcrypt = require("bcryptjs");
const crypto = require("crypto");
const passport = require("passport");
const connection = require("../config/db");
var http = require("http").Server(router);
var io = require("socket.io")(http);

// Load User model
const User = require("../models/User");
const { forwardAuthenticated } = require("../config/auth");

// Login Page
router.get("/login", forwardAuthenticated, (req, res) => res.render("login"));

// Register Page
router.get("/register", forwardAuthenticated, (req, res) =>
  res.render("register")
);

// Register Page
router.get("/register", forwardAuthenticated, (req, res) =>
  res.render("register")
);

// Register
router.post("/register", (req, res) => {
  const { username, email, password, password2 } = req.body;
  var errors = [];

  if (!username || !email || !password || !password2) {
    errors.push({ msg: "Please enter all fields" });
  }

  if (password != password2) {
    errors.push({ msg: "Passwords do not match" });
  }

  if (password.length < 6) {
    errors.push({ msg: "Password must be at least 6 characters" });
  }

  if (errors.length > 0) {
    res.render("register", {
      errors,
      username,
      email,
      password,
      password2
    });
  } else {
    // let key = crypto.pbkdf2Sync(req.body.password, "salt", 10, 10, "sha512");
    // let password = key.toString("hex");

    let userexist = `SELECT count(email) as count from users where email='${req.body.email}'`;
    let userquery = connection.query(userexist, (err, result) => {
      if (err) {
        console.log(err);
      }
      if (result[0].count >= 1) {
        errors.push({ msg: "Email already exists" });
        res.render("register", {
          errors,
          email
        });
      } else {
        let { username, email, password } = req.body;
        let adduserpost = {
          username: username,
          email: email,

          password: password
        };
        let sql = "INSERT INTO users SET ?";
        let query = connection.query(sql, adduserpost, (err, result) => {
          if (err) {
            console.log(err);
          }
          res.redirect("login");
        });
      }
    });
  }
});
// Login
router.post("/login", (req, res, next) => {
  passport.authenticate("local", {
    successRedirect: "/dashboard",
    failureRedirect: "/users/login",
    failureFlash: true
  })(req, res, next);
});

// Logout
router.get("/logout", (req, res) => {
  req.logout();
  req.flash("success_msg", "You are logged out");
  res.redirect("/users/login");
});

module.exports = router;
//         });
//       }
//     });
//   }
// });

// Login
router.post("/login", (req, res, next) => {
  passport.authenticate("local", {
    successRedirect: "/dashboard",
    failureRedirect: "/users/login",
    failureFlash: true
  })(req, res, next);
});

// Logout
router.get("/logout", (req, res) => {
  req.logout();
  req.flash("success_msg", "You are logged out");
  res.redirect("/users/login");
});

module.exports = router;
