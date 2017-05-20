module PostsHelper
    def render_highlight_content_post(post, query_string)
        excerpt_cont = excerpt(post.title, query_string, radius: 500)
        highlight(excerpt_cont, query_string)
    end
end
