package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import pl.jbzd.app.model.Media;
/* loaded from: classes.dex */
public class MediaListResponse extends BaseApiResponse {
    @JsonProperty("data")
    public List<Media> response;
}
