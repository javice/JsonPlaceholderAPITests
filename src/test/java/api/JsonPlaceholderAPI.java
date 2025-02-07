package api;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class JsonPlaceholderAPI {
    private static final String BASE_URL = "https://jsonplaceholder.typicode.com/";

    public String getPostsEndpoint() {
        return BASE_URL + "posts/";
    }


    public String getPostsByUserId(Integer id) {
        return getPostsEndpoint() + id;
    }

    public String getPostsAll() {
        return getPostsEndpoint();
    }


    public Request newPostByUserId(Integer id) {
        ObjectMapper mapper = new ObjectMapper();
        ObjectNode post = mapper.createObjectNode();
        post.put("userId", id);
        post.put("title", "title");
        post.put("body", "body");
        return new Request(BASE_URL + "posts/", post.toString());
    }

    public Request updateExistingPostById(Integer id) {
        ObjectMapper mapper = new ObjectMapper();
        ObjectNode post = mapper.createObjectNode();
        post.put("id", 101);
        post.put("title", "Prueba Modificada");
        post.put("body", "Cuerpo de la prueba modificado");
        post.put("userId", id);
        return new Request(BASE_URL + "posts/" + id, post.toString());
    }

    public Request patchExistingPostById(Integer id) {
        ObjectMapper mapper = new ObjectMapper();
        ObjectNode post = mapper.createObjectNode();
        post.put("title", "Prueba Modificada por PATCH");
        return new Request(BASE_URL + "posts/" + id, post.toString());
    }

    public Request deleteExistingPostById(Integer id) {
        return new Request(BASE_URL + "posts/" + id, "");
    }

    public static class Request {
        private final String url;
        private final String body;

        public Request(String url, String body) {
            this.url = url;
            this.body = body;
        }
        public String getUrl(){
            return url;
        }
        public String getBody(){
            return body;
        }
        @Override
        public String toString() {
            return "Request{" +
                    "url='" + url + '\'' +
                    ", body='" + body + '\'' +
                    '}';
        }
    }
}

