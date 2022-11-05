package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.app.model.Media;
/* loaded from: classes.dex */
public class VoteResponse extends BaseApiResponse {
    @JsonProperty("data")
    public Media media;
}
