package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.api.model.StatusModel;
/* loaded from: classes.dex */
public class ObserveResponse extends BaseApiResponse {
    @JsonProperty("data")
    public StatusModel response;
}
