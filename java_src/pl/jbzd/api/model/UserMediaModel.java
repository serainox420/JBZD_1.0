package pl.jbzd.api.model;

import com.facebook.share.internal.ShareConstants;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import pl.jbzd.app.model.Comment;
import pl.jbzd.app.model.Media;
import pl.jbzd.app.model.User;
/* loaded from: classes.dex */
public class UserMediaModel implements BaseApiModel {
    @JsonProperty("comments")
    public List<Comment> comments;
    @JsonProperty(ShareConstants.WEB_DIALOG_PARAM_MEDIA)
    public List<Media> media;
    @JsonProperty("user")
    public User user;
}
