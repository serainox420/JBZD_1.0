package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.app.model.BaseMedia;
/* loaded from: classes.dex */
public class BaseMediaResponse extends BaseApiResponse {
    @JsonProperty("data")
    public BaseMedia media;
}
