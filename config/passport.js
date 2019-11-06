const LocalStrategy = require("passport-local").Strategy;
const mysql = require("mysql");
const connection = require("./db");
const bcrypt = require("bcryptjs");

// Load User model

module.exports = function(passport) {
  // passport.use(
  //   new LocalStrategy({ usernameField: "email" }, (email, password, done) => {
  //     // Match user
  //     User.findOne({
  //       email: email
  //     }).then(user => {
  //       if (!user) {
  //         return done(null, false, { message: "That email is not registered" });
  //       }

  //       // Match password
  //       bcrypt.compare(password, user.password, (err, isMatch) => {
  //         if (err) throw err;
  //         if (isMatch) {
  //           return done(null, user);
  //         } else {
  //           return done(null, false, { message: "Password incorrect" });
  //         }
  //       });
  //     });
  //   })
  // );

  passport.use(
    new LocalStrategy(
      {
        // by default, local strategy uses username and password, we will override with email
        usernameField: "email",
        passwordField: "password",
        passReqToCallback: true // allows us to pass back the entire request to the callback
      },
      function(req, email, password, done) {
        // callback with email and password from our form

        connection.query(
          "SELECT * FROM `users` WHERE `email` = '" + email + "'",
          function(err, rows) {
            if (err) return done(err);
            if (!rows.length) {
              return done(null, false, {
                message: "That email is not registered"
              }); // req.flash is the way to set flashdata using connect-flash
            }

            // if the user is found but the password is wrong
            if (!(rows[0].password == password))
              return done(null, false, { message: "Password incorrect" }); // create the loginMessage and save it to session as flashdata

            // all is well, return successful user
            return done(null, rows[0]);
          }
        );
      }
    )
  );

  // used to serialize the user for the session
  passport.serializeUser(function(user, done) {
    done(null, user.id);
  });

  // used to deserialize the user
  passport.deserializeUser(function(id, done) {
    connection.query("select * from users where id = " + id, function(
      err,
      rows
    ) {
      done(err, rows[0]);
    });
  });
};
