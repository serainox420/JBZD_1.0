.class public Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected final _caseInsensitive:Z

.field private _hashArea:[Ljava/lang/Object;

.field private _hashMask:I

.field private _propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field private _size:I

.field private _spillCount:I


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Z)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    .line 74
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 76
    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    .line 61
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 62
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 63
    return-void
.end method

.method private final _find2(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 392
    if-nez p3, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-object v0

    .line 396
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v1, v1, 0x1

    .line 397
    shr-int/lit8 v2, p2, 0x1

    add-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x1

    .line 398
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 399
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    goto :goto_0

    .line 402
    :cond_2
    if-eqz v3, :cond_0

    .line 403
    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    .line 404
    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int/2addr v2, v1

    :goto_1
    if-ge v1, v2, :cond_0

    .line 405
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 406
    if-eq v3, p1, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    goto :goto_0

    .line 404
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method private final _findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I
    .locals 3

    .prologue
    .line 586
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 587
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 588
    return v0

    .line 586
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' missing from _propsInOrder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final _findIndexInHash(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v0

    .line 563
    shl-int/lit8 v1, v0, 0x1

    .line 566
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    add-int/lit8 v0, v1, 0x1

    .line 582
    :goto_0
    return v0

    .line 570
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v1, v1, 0x1

    .line 571
    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    .line 572
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    shr-int/lit8 v0, v1, 0x1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    .line 577
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 578
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 582
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private final _hashCode(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 605
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v0, v1

    return v0
.end method

.method public static construct(Ljava/util/Collection;Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;Z)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;)V

    return-object v0
.end method

.method private static final findSize(I)I
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x5

    if-gt p0, v0, :cond_1

    .line 144
    const/16 v0, 0x8

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const/16 v0, 0xc

    if-gt p0, v0, :cond_2

    .line 147
    const/16 v0, 0x10

    goto :goto_0

    .line 149
    :cond_2
    shr-int/lit8 v0, p0, 0x2

    add-int v1, p0, v0

    .line 150
    const/16 v0, 0x20

    .line 151
    :goto_1
    if-ge v0, v1, :cond_0

    .line 152
    add-int/2addr v0, v0

    goto :goto_1
.end method

.method private properties()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v2, Ljava/util/ArrayList;

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 319
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 323
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected _rename(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 3

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 523
    :goto_0
    return-object p1

    .line 512
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 515
    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 519
    if-eq v2, v1, :cond_1

    .line 520
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    :cond_1
    move-object p1, v0

    .line 523
    goto :goto_0
.end method

.method public assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 5

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v4, v1

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 229
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 230
    if-eqz v0, :cond_1

    .line 231
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->assignIndex(I)V

    move v0, v1

    .line 228
    :goto_1
    add-int/lit8 v1, v3, 0x2

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 234
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public find(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 4

    .prologue
    .line 359
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 360
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 361
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 365
    :goto_1
    return-object v0

    .line 359
    :cond_0
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 4

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null property name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 378
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v0, v1

    .line 382
    shl-int/lit8 v1, v0, 0x1

    .line 383
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 384
    if-eq v2, p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 387
    :goto_0
    return-object v0

    :cond_3
    invoke-direct {p0, p1, v0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_find2(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    goto :goto_0
.end method

.method public findDeserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 468
    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 476
    :goto_0
    return v0

    .line 472
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    invoke-virtual {p0, v0, p3, p4, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_1
.end method

.method public getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v0
.end method

.method protected final getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected init(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    .line 97
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->findSize(I)I

    move-result v4

    .line 98
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 101
    shr-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x2

    .line 102
    new-array v1, v0, [Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 107
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v7

    .line 113
    shl-int/lit8 v3, v7, 0x1

    .line 116
    aget-object v8, v2, v3

    if-eqz v8, :cond_1

    .line 118
    shr-int/lit8 v3, v7, 0x1

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x1

    .line 119
    aget-object v7, v2, v3

    if-eqz v7, :cond_1

    .line 121
    shr-int/lit8 v3, v4, 0x1

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 122
    add-int/lit8 v1, v1, 0x2

    .line 123
    array-length v7, v2

    if-lt v3, v7, :cond_1

    .line 124
    array-length v7, v2

    add-int/lit8 v7, v7, 0x4

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 129
    :cond_1
    aput-object v6, v2, v3

    .line 130
    add-int/lit8 v3, v3, 0x1

    aput-object v0, v2, v3

    goto :goto_0

    .line 137
    :cond_2
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 138
    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 139
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->properties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 8

    .prologue
    .line 428
    new-instance v3, Ljava/util/ArrayList;

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v4

    .line 430
    const/4 v1, 0x0

    .line 432
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v5, v2

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    .line 433
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 434
    if-nez v0, :cond_0

    .line 432
    :goto_1
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 437
    :cond_0
    if-nez v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v6, v2, -0x1

    aget-object v1, v1, v6

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 441
    if-eqz v1, :cond_1

    .line 443
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v0

    const/4 v7, 0x0

    aput-object v7, v6, v0

    goto :goto_1

    .line 447
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 449
    :cond_2
    if-nez v1, :cond_3

    .line 450
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found, can\'t remove"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_3
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 453
    return-void
.end method

.method public renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 4

    .prologue
    .line 243
    if-eqz p1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-ne p1, v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-object p0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v0

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 251
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v3, v3, v0

    .line 254
    if-nez v3, :cond_2

    .line 255
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_rename(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 261
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findIndexInHash(Ljava/lang/String;)I

    move-result v1

    .line 304
    if-ltz v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 306
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 308
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v0

    aput-object p1, v1, v0

    .line 309
    return-void

    .line 312
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entry \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' found, can\'t replace"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    const-string v0, "Properties=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    .line 487
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 489
    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_0

    .line 490
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const/16 v1, 0x28

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 495
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 496
    goto :goto_0

    .line 497
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCaseInsensitivity(Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-ne v0, p1, :cond_0

    .line 89
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 5

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v2

    .line 176
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 177
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 178
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 180
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v0

    aput-object p1, v1, v0

    .line 221
    :goto_1
    return-object p0

    .line 176
    :cond_0
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 185
    :cond_1
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v1

    .line 186
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v3, v0, 0x1

    .line 187
    shl-int/lit8 v0, v1, 0x1

    .line 190
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    .line 192
    shr-int/lit8 v0, v1, 0x1

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x1

    .line 193
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 195
    shr-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int/2addr v0, v1

    .line 196
    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 197
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 213
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aput-object p1, v1, v0

    .line 215
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v0

    .line 216
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 217
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aput-object p1, v0, v1

    goto :goto_1
.end method

.method public withoutProperties(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .prologue
    .line 273
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-object p0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v0

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 280
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v3, v3, v0

    .line 284
    if-eqz v3, :cond_1

    .line 285
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 535
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 538
    :cond_1
    if-eqz p4, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p4, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 540
    :goto_1
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_5

    .line 541
    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/fasterxml/jackson/core/JsonProcessingException;

    if-nez v1, :cond_6

    .line 542
    :cond_3
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 538
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 544
    :cond_5
    if-nez v1, :cond_6

    .line 545
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 546
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 549
    :cond_6
    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method
