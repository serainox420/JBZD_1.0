.class public Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
.super Ljava/lang/Object;
.source "PropertyValueBuffer.java"


# instance fields
.field protected _buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

.field protected final _context:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field protected final _creatorParameters:[Ljava/lang/Object;

.field protected _idValue:Ljava/lang/Object;

.field protected final _objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

.field protected _paramsNeeded:I

.field protected _paramsSeen:I

.field protected final _paramsSeenBig:Ljava/util/BitSet;

.field protected final _parser:Lcom/fasterxml/jackson/core/JsonParser;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    .line 89
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 90
    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    .line 91
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 92
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    .line 93
    const/16 v0, 0x20

    if-ge p3, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    goto :goto_0
.end method


# virtual methods
.method protected _findMissing(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    const-string v1, "Missing required creator property \'%s\' (index %d)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    const-string v1, "Missing creator property \'%s\' (index %d); DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES enabled"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v2

    .line 262
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 264
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    if-nez v3, :cond_2

    .line 265
    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeen:I

    .line 266
    shl-int v2, v1, v2

    or-int/2addr v2, v3

    .line 267
    if-eq v3, v2, :cond_1

    .line 268
    iput v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeen:I

    .line 269
    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-gtz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 282
    :cond_1
    :goto_0
    return v0

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 277
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-gtz v1, :cond_1

    goto :goto_0
.end method

.method public bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    .line 291
    return-void
.end method

.method public bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    .line 295
    return-void
.end method

.method public bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 286
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Regular;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    .line 287
    return-void
.end method

.method protected buffered()Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_buffered:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    return-object v0
.end method

.method public getParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->hasParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 133
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    const-string v1, "Null value for creator property \'%s\'; DeserializationFeature.FAIL_ON_NULL_FOR_CREATOR_PARAMETERS enabled"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_findMissing(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0

    .line 138
    :cond_1
    return-object v0
.end method

.method public getParameters([Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 152
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-lez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    if-nez v0, :cond_1

    .line 154
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeen:I

    .line 157
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    array-length v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    .line 158
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aget-object v5, p1, v0

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_findMissing(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    array-length v2, v0

    move v0, v1

    .line 164
    :goto_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 165
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aget-object v4, p1, v0

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_findMissing(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 171
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 172
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 173
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    const-string v3, "Null value for creator property \'%s\'; DeserializationFeature.FAIL_ON_NULL_FOR_CREATOR_PARAMETERS enabled"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, p1, v0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aget-object v6, p1, v0

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public handleIdValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->bindItem(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 244
    :cond_0
    :goto_0
    return-object p2

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportUnresolvedObjectId(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final hasParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 108
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    if-nez v1, :cond_1

    .line 109
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeen:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v2

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsSeenBig:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readIdProperty(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->readObjectReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->_idValue:Ljava/lang/Object;

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
