bring cloud;
bring util;

let api = new cloud.Api();

api.get("/hello", inflight () => {
  return {
    status: 200,
    body: "World!!!!"
  };
});

api.get("/env", inflight () => {
  return {
    status: 200,
    body: "FOO was: {util.env("FOO")}"
  };
});
