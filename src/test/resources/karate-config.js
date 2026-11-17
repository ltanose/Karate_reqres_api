function fn() {
var env = karate.env || 'dev';

karate.log('karate.env system property was:', env);

var config = {
    baseUrl: "https://reqres.in/api",
    apiKey: 'reqres_dce3c881f1ef4ae5bfe4c66322aa46ce'
}
if (env == 'dev'){

    config.baseUrl =  "https://reqres.in/api"

}else if (env == 'e2e'){

}
karate.configure('connectTimeout', 1000);
karate.configure('readTimeout', 1000);

karate.configure('logPrettyRequest', true);
karate.configure('logPrettyResponse', true);

return config;
}