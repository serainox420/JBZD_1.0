package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.api.model.RetrievePasswordModel;
/* loaded from: classes.dex */
public class UserRetrievePasswordResponse extends BaseApiResponse {
    @JsonProperty("data")
    public RetrievePasswordModel data;
}
