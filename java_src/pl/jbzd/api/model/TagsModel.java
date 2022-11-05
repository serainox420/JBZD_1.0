package pl.jbzd.api.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
/* loaded from: classes.dex */
public class TagsModel implements BaseApiModel {
    @JsonProperty("tags")
    public List<String> tags;
}
