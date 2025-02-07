Feature: Json Placeholder API Tests
  Background:
    * def JsonPlaceholderAPI = Java.type('api.JsonPlaceholderAPI')
    * def jsonPlaceholderAPI = new JsonPlaceholderAPI()

  Scenario: Get all posts
    * def endpointPosts = jsonPlaceholderAPI.getPostsAll()
    Given url endpointPosts
    * print 'URL: ' + endpointPosts
    When method GET
    Then status 200
    * print 'Response: ' + response[0].title
    And match response[0].userId == 1

  Scenario: Get post by User ID
    * def endpointPosts = jsonPlaceholderAPI.getPostsByUserId(1)
    Given url endpointPosts
    * print 'URL: ' + endpointPosts
    When method GET
    Then status 200
    And match response.userId == 1
    And match response.id == 1
    And match response.title == 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit'
    And match response.body == 'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto'

  Scenario: New Post By User ID
    * def endpointPosts = jsonPlaceholderAPI.newPostByUserId(1)
    Given url endpointPosts.url
    And request endpointPosts.body
    * print 'URL: ' + endpointPosts.url
    * print 'Request: ' + endpointPosts.body
    When method POST
    Then status 201
    And match response.id == 101

  Scenario: Update Post By ID
  * def endpointPosts = jsonPlaceholderAPI.updateExistingPostById(1)
  Given url endpointPosts.url
  And request endpointPosts.body
  * print 'URL: ' + endpointPosts.url
  * print 'Request: ' + endpointPosts.body
  When method PUT
  Then status 200
  And match response.id == 1

  Scenario: Patch Post By ID
    * def endpointPosts = jsonPlaceholderAPI.patchExistingPostById(1)
    Given url endpointPosts.url
    And request endpointPosts.body
    * print 'URL: ' + endpointPosts.url
    * print 'Request: ' + endpointPosts.body
    When method PATCH
    Then status 200
    And match response.id == 1
    And match response.userId == 1

  Scenario: Delete Post By ID
  * def endpointPosts = jsonPlaceholderAPI.deleteExistingPostById(1)
  Given url endpointPosts.url
  * print 'URL: ' + endpointPosts.url
  When method DELETE
  Then status 200
