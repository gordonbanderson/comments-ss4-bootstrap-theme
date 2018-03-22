<nav aria-label="Comments pagination">
    <ul class="pagination justify-content-center">
        <% if $PrevLink %>
            <li class="page-item"><a class="page-link" href="$PrevLink"><% _t('CommentsInterface_ss.PREV','previous') %></a></li>
        <% else %>
            <li class="page-item-disabled"><a class="page-link" href="#"><% _t('CommentsInterface_ss.PREV','previous') %></a></li>
        <% end_if %>

        <% if $Pages %>
            <% loop $PaginationSummary(8) %>
                <% if $CurrentBool %>
                    <li class="page-item active">
                          <span class="page-link">
                            $PageNum
                            <span class="sr-only">(current)</span>
                          </span>
                    </li>
                <% else %>
                    <% if $Link %><li class="page-item"><a class="page-link" href="$Link">$PageNum</a></li>
                    <% else %><li class="page-item-disabled"><a class="page-link" href="$Link">...</a></li><% end_if %>

                <% end_if %>
            <% end_loop %>
        <% end_if %>

        <% if $NextLink %>
            <li class="page-item"><a class="page-link" href="$NextLink"><% _t('CommentsInterface_ss.NEXT','next') %></a></li>
        <% else %>
            <li class="page-item-disabled"><a class="page-link" href="#"><% _t('CommentsInterface_ss.NEXT','next') %></a></li>
        <% end_if %>
    </ul>
</nav>
