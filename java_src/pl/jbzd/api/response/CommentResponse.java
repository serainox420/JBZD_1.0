package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.app.model.Comment;
/* loaded from: classes.dex */
public class CommentResponse extends BaseApiResponse {
    @JsonProperty("data")
    public Comment comment;
}
