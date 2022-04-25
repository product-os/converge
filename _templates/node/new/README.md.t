---
to: README.md
---
<%
  is_public = locals.data && locals.data.is_public
  is_private = !is_public
  has_description = locals.description != null
%># <%= name %>

<% if (has_description) { %><%= description %><% } %>
