<% if not $isPreview %>
    <div class="media mb-4 id="$Permalink"">
        <% if $Gravatar %>
            <img class="d-flex mr-3 rounded-circle gravatar" src="$Gravatar.ATT" alt="Gravatar for $Name.ATT" title="Gravatar for $Name.ATT" />
        <% end_if %>
        <div class="media-body <% if $Odd %>odd<% else_if $Even %>even<% end_if %>">
            <h5 class="mt-0"><% if $URL %>
                <a class="author" href="$URL.URL" rel="nofollow">$AuthorName.XML</a>
            <% else %>
                <span class="author">$AuthorName.XML</span>
            <% end_if %></h5>
            <p>$EscapedComment</p>

            <span class="date">$Created.Nice ($Created.Ago)</span>

        <% if not $isPreview %>
            <% if $ApproveLink || $SpamLink || $HamLink || $DeleteLink || $RepliesEnabled %>
                <div class="comment-action-links">
                    <div class="comment-moderation-options" style="background: yellow;">
                        <% if $ApproveLink %>
                            <a href="$ApproveLink.ATT" class="approve btn btn-warning float-right ml-1"><% _t('CommentsInterface_singlecomment_ss.APPROVE', 'approve it') %></a>
                        <% end_if %>
                        <% if $SpamLink %>
                            <a href="$SpamLink.ATT" class="spam btn btn-warning float-right ml-1"><% _t('CommentsInterface_singlecomment_ss.ISSPAM','spam it') %></a>
                        <% end_if %>
                        <% if $HamLink %>
                            <a href="$HamLink.ATT" class="ham btn btn-warning float-right ml-1"><% _t('CommentsInterface_singlecomment_ss.ISNTSPAM','not spam') %></a>
                        <% end_if %>
                        <% if $DeleteLink %>
                            <a href="$DeleteLink.ATT" class="delete btn btn-danger float-right ml-1"><% _t('CommentsInterface_singlecomment_ss.REMCOM','reject it') %></a>
                        <% end_if %>
                    </div>
                    <% if $RepliesEnabled && $canPostComment %>
                        <button class="comment-reply-link" type="button" aria-controls="$ReplyForm.FormName" aria-expanded="false">
                            <% _t('CommentsInterface_singlecomment_ss.REPLYTO','Reply to') %> $AuthorName.XML
                        </button>
                    <% end_if %>
                </div>
            <% end_if %>

            <% include CommentReplies %>
        <% end_if %>

        </div>

    </div>
<% end_if %>

<!-- how to deal with preview - modal? -->


