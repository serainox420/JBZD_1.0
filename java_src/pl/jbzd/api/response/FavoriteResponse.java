package pl.jbzd.api.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.api.model.StatusModel;
/* loaded from: classes.dex */
public class FavoriteResponse extends BaseApiResponse {
    @JsonProperty("data")
    public StatusModel data;
}
