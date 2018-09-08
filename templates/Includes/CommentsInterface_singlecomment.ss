<% if not $isPreview %>
    <div class="media single-comment <% if $Odd %>odd<% else_if $Even %>even<% end_if %>" id="$Permalink">
        <% if $Gravatar %>
            <img class="thumbnail float-sm-left" src="$Gravatar.ATT" alt="Gravatar for $Name.ATT" title="Gravatar for $Name.ATT"/>
        <% end_if %>
        <div class="media-body">
            <div class="media-content">
                <h6><span>$Created.Nice ($Created.Ago)</span> <% if $URL %>
                    <a class="author" href="$URL.URL" rel="nofollow">$AuthorName.XML</a>
                <% else %>
                    <span class="author">$AuthorName.XML</span>
                <% end_if %></h6>

                <p>$EscapedComment</p>

                <% include CommentReplies %>
            </div>
        </div>

    </div>
<% end_if %>

<!-- how to deal with preview - modal? -->


