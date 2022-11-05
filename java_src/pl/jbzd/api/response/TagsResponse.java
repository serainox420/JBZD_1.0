package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.api.model.TagsModel;
/* loaded from: classes.dex */
public class TagsResponse extends BaseApiResponse {
    @JsonProperty("data")
    public TagsModel tags;
}
