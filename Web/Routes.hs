module Web.Routes where
import IHP.RouterPrelude
import Generated.Types
import Web.Types

-- Generator Marker
instance AutoRoute StaticController
-- instance AutoRoute PostsController


instance AutoRoute CommentsController

instance HasPath PostsController where
    pathTo PostsAction = "/posts"
    pathTo NewPostAction = "/post/new"
    pathTo CreatePostAction = "/post/create"
    pathTo ShowPostAction { postId } = "/post/" <> tshow postId
    pathTo EditPostAction { postId } = "/post/edit/" <> tshow postId
    pathTo UpdatePostAction { postId } = "/post/update/" <> tshow postId
    pathTo DeletePostAction { postId } = "/post/delete/" <> tshow postId

instance CanRoute PostsController where
    parseRoute' = do
        let posts = do string "/posts"; optional "/"; endOfInput; pure PostsAction 
        let showPost = do string "/post/"; postId <- parseId; optional "/"; endOfInput; pure ShowPostAction { postId }
        let newPost = do string "/post/new"; optional "/"; endOfInput; pure NewPostAction 
        let createPost = do string "/post/create"; optional "/"; endOfInput; pure CreatePostAction 
        let editPost = do string "/post/edit/"; postId <- parseId; optional "/"; endOfInput; pure EditPostAction { postId }
        let updatePost = do string "/post/update/"; postId <- parseId; optional "/"; endOfInput; pure UpdatePostAction { postId }
        let deletePost = do string "/post/delete/"; postId <- parseId; optional "/"; endOfInput; pure DeletePostAction { postId }

        posts <|> newPost <|> createPost <|> showPost <|> editPost <|> updatePost <|> deletePost

