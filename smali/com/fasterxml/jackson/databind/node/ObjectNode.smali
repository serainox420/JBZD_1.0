.class public Lcom/fasterxml/jackson/databind/node/ObjectNode;
.super Lcom/fasterxml/jackson/databind/node/ContainerNode;
.source "ObjectNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/node/ContainerNode",
        "<",
        "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 33
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method protected _at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->getMatchingProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method protected _childrenEqual(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected _put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    return-object p0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->deepCopy()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5

    .prologue
    .line 49
    new-instance v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    iget-object v3, v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    return-object v1
.end method

.method public elements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 812
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 813
    :cond_1
    if-eqz p1, :cond_0

    .line 814
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_0

    .line 815
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_childrenEqual(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/util/Comparator;Lcom/fasterxml/jackson/databind/JsonNode;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 164
    instance-of v0, p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    move v0, v2

    .line 182
    :goto_0
    return v0

    .line 167
    :cond_0
    check-cast p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 168
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    .line 169
    iget-object v3, p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    .line 171
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 172
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v4, v1, :cond_1

    move v0, v2

    .line 173
    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 178
    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->equals(Ljava/util/Comparator;Lcom/fasterxml/jackson/databind/JsonNode;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    move v0, v2

    .line 179
    goto :goto_0

    .line 182
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fieldNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public fields()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    :goto_0
    return-object p0

    .line 246
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-object p0, v0

    goto :goto_0

    .line 251
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, p2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    if-nez v1, :cond_2

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :goto_1
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v1, v0

    .line 267
    goto :goto_0

    .line 264
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 268
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 203
    :goto_0
    return-object v0

    .line 198
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, p2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    if-nez v1, :cond_0

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 219
    :cond_2
    return-object v1
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, p2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    if-nez v1, :cond_0

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 236
    :cond_2
    return-object v1
.end method

.method public bridge synthetic get(I)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic path(I)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->path(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic path(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public path(I)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 113
    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 474
    if-nez p2, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p2

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .prologue
    .line 739
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .prologue
    .line 693
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 789
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .prologue
    .line 749
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 729
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 679
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .prologue
    .line 709
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Short;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 655
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 769
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 759
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;S)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;[B)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 799
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    goto :goto_0
.end method

.method public putAll(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->setAll(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonNode;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->setAll(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 594
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 595
    return-object v0
.end method

.method public putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-object p0
.end method

.method public putObject(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 612
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 613
    return-object v0
.end method

.method public putPOJO(Ljava/lang/String;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public putRawValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/util/RawValue;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->rawValueNode(Lcom/fasterxml/jackson/databind/util/RawValue;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public remove(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 502
    return-object p0
.end method

.method public bridge synthetic removeAll()Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->removeAll()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public removeAll()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 515
    return-object p0
.end method

.method public replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 417
    if-nez p2, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p2

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public retain(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 559
    return-object p0
.end method

.method public varargs retain([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 571
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->retain(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p2, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 288
    :goto_0
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    .line 300
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 303
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 286
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 306
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 307
    return-void
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    if-eqz p2, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    .line 317
    :goto_0
    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    .line 324
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 328
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 315
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 332
    return-void
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 358
    if-nez p2, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p2

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-object p0
.end method

.method public setAll(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 400
    return-object p0
.end method

.method public setAll(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonNode;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 379
    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v1

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    :cond_1
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 838
    const-string v0, "{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const/4 v0, 0x0

    .line 840
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 841
    if-lez v1, :cond_0

    .line 842
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 845
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/fasterxml/jackson/databind/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 846
    const/16 v1, 0x3a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 848
    goto :goto_0

    .line 849
    :cond_1
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->with(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 131
    if-eqz v0, :cond_1

    .line 132
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 141
    :goto_0
    return-object v0

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has value that is not of type ObjectNode (but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic withArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->withArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public withArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 148
    if-eqz v0, :cond_1

    .line 149
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 158
    :goto_0
    return-object v0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has value that is not of type ArrayNode (but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public without(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-object p0
.end method

.method public without(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 450
    return-object p0
.end method
