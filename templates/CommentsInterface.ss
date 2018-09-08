<% if $CommentsEnabled %>
    <div id="$CommentHolderID" class="comments-holder-container comment-area">

        <h4>$Comments.Count Comments</h4>


        <div class="comments-holder">
            <% if $PagedComments %>
                <% loop $PagedComments %>
                    <% include CommentsInterface_singlecomment %>
                <% end_loop %>
                <% with $PagedComments %>
                    <% include CommentPagination %>
                <% end_with %>
            <% end_if %>
            <% if $PagedComments.Count == 0 %>
                <div class="alert alert-info">
                    <% _t('CommentsInterface_ss.NOCOMMENTSYET','No one has commented on this page yet.') %>
                </div>
            <% end_if %>

        </div>



        <h4>Leave your comment</h4>
        <form id="commentform" action="#" method="post" name="comment-form">
            <div class="row">
                <div class="span4">
                    <input placeholder="* Enter your full name" type="text">
                </div>
                <div class="span4">
                    <input placeholder="* Enter your email address" type="text">
                </div>
                <div class="span4 margintop10">
                    <input placeholder="Enter your website" type="text">
                </div>
                <div class="span8 margintop10">
                    <p>
                        <textarea rows="12" class="input-block-level" placeholder="*Your comment here"></textarea>
                    </p>
                    <p>
                        <button class="btn btn-theme margintop10" type="submit">Submit comment</button>
                    </p>
                </div>
            </div>
        </form>




        <% if $DeleteAllLink %>
            <p class="delete-comments">
                <a href="$DeleteAllLink"><% _t('CommentsInterface_ss.DELETEALLCOMMENTS','Delete all comments on this page') %></a>
            </p>
        <% end_if %>



        <div class="card my-4">
            <h5 class="card-header"><% _t('CommentsInterface_ss.POSTCOM','Post your comment') %></h5>
            <div class="card-body">
                <% if $AddCommentForm %>
                    <% if $canPostComment %>
                        <% if $ModeratedSubmitted %>
                            <div class="alert alert-warning">
                                <% _t('CommentsInterface_ss.AWAITINGMODERATION', 'Your comment has been submitted and is now awaiting moderation.') %>
                            </div>

                        <% end_if %>
                        $AddCommentForm
                    <% else %>
                        <p><% _t('CommentsInterface_ss.COMMENTLOGINERROR', 'You cannot post comments until you have logged in') %><% if $PostingRequiredPermission %>
                            , <% _t('CommentsInterface_ss.COMMENTPERMISSIONERROR', 'and have an appropriate permission level') %><% end_if %>
                            .
                            <a href="Security/login?BackURL={$Parent.Link}"
                               title="<% _t('CommentsInterface_ss.LOGINTOPOSTCOMMENT', 'Login to post a comment') %>"><% _t('CommentsInterface_ss.COMMENTPOSTLOGIN', 'Login Here') %></a>.
                        </p>
                    <% end_if %>
                <% else %>
                    <p><% _t('CommentsInterface_ss.COMMENTSDISABLED', 'Posting comments has been disabled') %>.</p>
                <% end_if %>
            </div>
        </div>

        <span class="badge badge-pill badge-info float-right">Notifications <span
            class="badge badge-light">4</span></span>
        <h4><% _t('CommentsInterface_ss.COMMENTS','Comments') %></h4>


        <ul class="commenting-rss-feed mt-4 list-unstyled list-inline">
            <li class="list-inline-item">
                <a href="$CommentRSSLinkPage"><i
                    class="fa fa-rss"></i>&nbsp;<% _t('CommentsInterface_ss.RSSFEEDCOMMENTS', 'RSS feed for comments on this page') %>
                </a>
            </li>
            <li class="list-inline-item">
                <a href="$CommentRSSLink"><i
                    class="fa fa-rss"></i>&nbsp;<% _t('CommentsInterface_ss.RSSFEEDALLCOMMENTS', 'RSS feed for all comments') %>
                </a>
            </li>
        </ul>
    </div>
<% end_if %>
