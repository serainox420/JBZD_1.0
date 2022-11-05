package pl.jbzd.api.response;

import com.facebook.share.internal.ShareConstants;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import pl.jbzd.api.util.ApiUtils;
import pl.jbzd.core.api.ApiResponse;
@JsonIgnoreProperties(ignoreUnknown = true)
/* loaded from: classes.dex */
public abstract class BaseApiResponse implements ApiResponse {
    @JsonProperty(ShareConstants.WEB_DIALOG_PARAM_MESSAGE)
    public String message;
    @JsonProperty("status")
    public String status;

    @Override // pl.jbzd.core.api.ApiResponse
    public String toString() {
        return ApiUtils.toString(this, getClass());
    }
}
