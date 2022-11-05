.class public Lpl/jbzd/app/model/realm/JacksonDeserializerRealmListComment;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "JacksonDeserializerRealmListComment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonDeserializer",
        "<",
        "Ljava/util/List",
        "<",
        "Lpl/jbzd/app/model/Comment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V

    .line 25
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/model/realm/JacksonDeserializerRealmListComment;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/model/realm/JacksonDeserializerRealmListComment;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v1, Lio/realm/q;

    invoke-direct {v1}, Lio/realm/q;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object v0

    .line 35
    instance-of v2, v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 40
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 41
    iget-object v3, p0, Lpl/jbzd/app/model/realm/JacksonDeserializerRealmListComment;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v4, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 42
    invoke-virtual {v1, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 45
    goto :goto_0
.end method
