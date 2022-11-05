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
import pl.jbzd.app.model.Comment;
/* loaded from: classes3.dex */
public class JacksonDeserializerRealmListComment extends JsonDeserializer<List<Comment>> {
    private ObjectMapper objectMapper = new ObjectMapper();

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize  reason: collision with other method in class */
    public List<Comment> mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        q qVar = new q();
        TreeNode readTree = jsonParser.getCodec().readTree(jsonParser);
        if (!(readTree instanceof ArrayNode)) {
            return qVar;
        }
        Iterator<JsonNode> it = ((ArrayNode) readTree).iterator();
        while (it.hasNext()) {
            qVar.a((q) ((Comment) this.objectMapper.treeToValue(it.next(), Comment.class)));
        }
        return qVar;
    }
}
