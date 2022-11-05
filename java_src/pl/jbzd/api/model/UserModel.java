package pl.jbzd.api.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.app.model.User;
/* loaded from: classes.dex */
public class UserModel implements BaseApiModel {
    @JsonProperty("user")
    public User user;
}
