module.exports = {
  rewrite: [
    {
      from: '/(.*)',
      to: 'https://8080-appwrite-integrationfor-onrw45m2dan.ws-eu80.gitpod.io/$1',
      //   ^^^^^^^^ using https is important
      // @see https://github.com/appwrite/appwrite/issues/1082
    },
  ],
  port: 3001,
  hostname: 'localhost',
  corsOrigin: 'http://localhost:3000',
  corsAllowMethods: 'GET,POST,DELETE,PUT,PATCH,OPTIONS',
  corsCredentials: true,
  rewriteKeepSecureAttr: true,
  verbose: true,
}
