# FSNDP Full Stack Nano Degree Project: Catalog App on Linux Server

The project deployed the catalog app built in previously on to a AWS lightsail server.

In the catalog app, people can view catalog and products but only logged in user can create new product.
the creater of a product will be able to delete and modify the product.

administrator would have full access to every product,
and previlage to create/edit/delete categories.


## IP address & SSH PORT
* IP: 54.79.26.233

* PORT: 2200

## Complete Url to the app
http://54.79.26.233


## Installed software

* finger 
* PostgreSQL
* git
* apache
* libapache2-mod-wsgi

        updated sites-enabled/000-default.conf
        
        Change: WSGIScriptAlias / /var/www/server/catalog.wsgi
        
* python2.7
* python-pip


### python lib
* httplib2
* flask
* oauth2client
* requests
* sqlalchemy
* psycopg2

## List of third-party resources
https://www.postgresql.org

http://flask.pocoo.org/docs/0.12/deploying/mod_wsgi/

https://modwsgi.readthedocs.io/en/develop/#

https://stackoverflow.com

Udacity Forum

## grader ssh key
/home/grader/.ssh/grader


# Detail on how to use the app

## Viewing as Admin
The database has been pre configured to have an admin user.
At this stage admin is hard coded into the backend, the full permission is give to the user with email
```
admin@catalogapp.com
```
and the password is 
```
adminadmin
```

### Permission
As admin, you will have
```
New Category button in the sidebar
New Product in a categoy (admin only)
Edit Category in a category (admin only)
Delete Category in Edit Category, it will delete all products under it. (admin only)
Admin also has the permission to control all product even if it is created by others

```

## Viewing as a guest

If you do not log in, you will be viewing as a guest which has view permission only.

You will be redirected to home page from where you can access login page

## Login/Sign Up

Remember me feature is not provided.

3rd Party login with Google and Facebook is supplied.

The 3rd party login will try to fetch your email address, username.

If your facebook is registered with a mobile number which means the app could not get an email,

the login will fail.

## Logged in User

Here is the operation a logged in user can have.
### Logout
It clears cookie, and session
### Add new product

### Edit the product created by the user.

### Delete the product created by the user.


## Author

* **Sean Fan** - *Initial work* - [SeanFan84](https://github.com/seanfan84)

## License

This project is not licensed.

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
