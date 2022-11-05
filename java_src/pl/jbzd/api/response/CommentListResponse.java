package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import pl.jbzd.app.model.Comment;
/* loaded from: classes.dex */
public class CommentListResponse extends BaseApiResponse {
    @JsonProperty("data")
    public List<Comment> response;
}
