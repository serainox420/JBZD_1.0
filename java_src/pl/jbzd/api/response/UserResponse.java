package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.api.model.UserModel;
/* loaded from: classes.dex */
public class UserResponse extends BaseApiResponse {
    @JsonProperty("data")
    public UserModel response;
}
