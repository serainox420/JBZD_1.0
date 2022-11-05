package pl.jbzd.app.model.realm;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import io.realm.q;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import pl.jbzd.app.model.Picture;
/* loaded from: classes3.dex */
public class JacksonDeserializerRealmListPicture extends JsonDeserializer<List<Picture>> {
    private ObjectMapper objectMapper = new ObjectMapper();

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize  reason: collision with other method in class */
    public List<Picture> mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        q qVar = new q();
        TreeNode readTree = jsonParser.getCodec().readTree(jsonParser);
        if (!(readTree instanceof ArrayNode)) {
            return qVar;
        }
        Iterator<JsonNode> it = ((ArrayNode) readTree).iterator();
        while (it.hasNext()) {
            qVar.a((q) ((Picture) this.objectMapper.treeToValue(it.next(), Picture.class)));
        }
        return qVar;
    }
}
