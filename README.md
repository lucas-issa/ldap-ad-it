# Simple LDAP server simulating AD for integration testing

This is a simple LDAP server that tries to simulate an AD using 
Apache Directory Server.

* It should work with
   * [ActiveDirectory for Node](https://www.npmjs.com/package/activedirectory)
* Is based on 
   * https://github.com/kwart/ldap-server/ and 
   * http://stackoverflow.com/questions/11174835/add-memberof-attribute-to-apacheds 


## Docker

### Running

Run the image with predefined users:

```bash
docker run -it --rm -p 10389:10389 lucasissa/ldap-ad-it
```

Or run the image using customized users:

```bash
docker run -d --name=ldap-ad-it --rm \
        -v $PWD/testdata/users.ldif:/ldap/users.ldif \
        -p 10389:10389 \
        lucasissa/ldap-ad-it:latest
```


### Building

```bash
docker build -t lucasissa/ldap-ad-it
```

