package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.api.model.UserMediaModel;
/* loaded from: classes.dex */
public class UserMediaResponse extends BaseApiResponse {
    @JsonProperty("data")
    public UserMediaModel response;
}
