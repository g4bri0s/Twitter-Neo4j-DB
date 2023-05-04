CREATE 
(user1:User{name:"user1 name", url: "user1Url", location: "somewhere", joined: 2/2018, email: "someemail@email.com"}),
(user2:User{name:"user2 name", url: "user2Url", location: "somewhere", joined: 2/2019, email: "someemail@email.com"}),
(user3:User{name:"user3 name", url: "user3Url", location: "somewhere", joined: 2/2017, email: "someemail@email.com"}),
(user4:User{name:"user4 name", url: "user4Url", location: "somewhere", joined: 2/2014, email: "someemail@email.com"}),
(user5:User{name:"user5 name", url: "user5Url", location: "somewhere", joined: 2/2007, email: "someemail@email.com"}),
(user6:User{name:"user6 name", url: "user6Url", location: "somewhere", joined: 2/2018, email: "someemail@email.com"}),
(user7:User{name:"user7 name", url: "user7Url", location: "somewhere", joined: 2/2016, email: "someemail@email.com"}),

(tweet1:Tweet{content:"some content", image:"image.url", URL:"tweet1.id"}),
(tweet2:Tweet{content:"some content", URL:"tweet2.id"}),
(tweet3:Tweet{content:"some content", URL:"tweet3.id"}),
(tweet4:Tweet{content:"some content", image:"image.url", URL:"tweet4.id"}),

(retweet1:Retweet{content:"some content", image:"image.url", URL:"tweet4.id"}),

(user1)-[:POST]-> (tweet1),
(user2)-[:REPLY]-> (tweet1),
(tweet1)-[:MENTION]-> (user4),
(tweet2)-[:QUOTE]-> (tweet1),
(user3)-[:LIKE]-> (tweet2),
(user4)-[:LIKE]-> (tweet2),
(user5)-[:LIKE]-> (tweet2),
(user6)-[:LIKE]-> (tweet2),
(user7)-[:LIKE]-> (tweet2),
(user7)-[:POST]-> (retweet1),
(retweet1)-[:POST]-> (tweet2)
