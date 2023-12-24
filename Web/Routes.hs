module Web.Routes where
import IHP.RouterPrelude
import Generated.Types
import Web.Types

-- Generator Marker
instance AutoRoute StaticController
instance AutoRoute PostsController


instance AutoRoute CommentsController

-- instance CanRoute PostsController where
--     parseRoute' = string "/posts" <* endOfInput >> pure PostsAction
--
--
-- instance HasPath PostsController where
--     pathTo PostsAction = "/posts"
--     pathTo x = pathTo x
