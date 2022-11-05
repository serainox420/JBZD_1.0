.class public Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;
.super Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.source "AnnotationIntrospectorPair.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 51
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 52
    return-void
.end method

.method public static create(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 73
    :goto_0
    return-object p1

    .line 70
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method protected _isExplicitClassOrOb(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 722
    if-nez p1, :cond_1

    move v0, v1

    .line 729
    :cond_0
    :goto_0
    return v0

    .line 725
    :cond_1
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 728
    check-cast p1, Ljava/lang/Class;

    .line 729
    if-eq p1, p2, :cond_2

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public allIntrospectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    .line 85
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    .line 86
    return-object p1
.end method

.method public findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 546
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 547
    return-void
.end method

.method public findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public findClassDescription(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findClassDescription(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findClassDescription(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_1
    return-object v0
.end method

.method public findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 611
    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_isExplicitClassOrOb(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 328
    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_isExplicitClassOrOb(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public findCreatorBinding(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorBinding(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_0

    .line 718
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorBinding(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v0

    goto :goto_0
.end method

.method public findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    .line 589
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 624
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 656
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 618
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 649
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 642
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 597
    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_isExplicitClassOrOb(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 575
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findEnumValues(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Enum",
            "<*>;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValues(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValues(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 583
    return-object v0
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 427
    if-nez v1, :cond_0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    goto :goto_0
.end method

.method public findIgnoreUnknownProperties(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findIgnoreUnknownProperties(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findIgnoreUnknownProperties(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 157
    :cond_0
    return-object v0
.end method

.method public findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v0

    .line 469
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 604
    const-class v1, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_isExplicitClassOrOb(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 321
    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_isExplicitClassOrOb(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 686
    if-nez v1, :cond_1

    .line 687
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 694
    :cond_0
    :goto_0
    return-object v0

    .line 688
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    if-ne v1, v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 690
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 555
    if-nez v1, :cond_1

    .line 556
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 563
    :cond_0
    :goto_0
    return-object v0

    .line 557
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    if-ne v1, v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 559
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    :cond_0
    return-object v0
.end method

.method public findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_isExplicitClassOrOb(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    .line 412
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    .line 420
    return-object v0
.end method

.method public findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;

    move-result-object v0

    .line 670
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    move-result-object v0

    .line 676
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    return-object v0
.end method

.method public findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;Z)[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;Z)[Ljava/lang/String;

    move-result-object v0

    .line 143
    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;Z)[Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0
.end method

.method public findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    if-eq v0, v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-object v0

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    move-result-object v0

    .line 479
    if-nez v0, :cond_0

    .line 482
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonProperty$Access;->AUTO:Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    goto :goto_0
.end method

.method public findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 249
    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 252
    :cond_0
    return-object v0
.end method

.method public findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v0

    .line 457
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v1

    .line 121
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 123
    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    goto :goto_0
.end method

.method public findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    .line 364
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    .line 366
    if-nez v1, :cond_0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    goto :goto_0
.end method

.method public findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Integer;

    move-result-object v0

    .line 463
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 241
    :cond_0
    return-object v0
.end method

.method public findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    .line 283
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 106
    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 524
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 347
    return-object v0
.end method

.method public findSerializationInclusionForContent(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationInclusionForContent(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationInclusionForContent(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 357
    return-object v0
.end method

.method public findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 517
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    .line 532
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v0

    .line 538
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    .line 510
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_isExplicitClassOrOb(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v1

    .line 259
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v2

    .line 260
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 265
    :goto_0
    return-object v0

    .line 261
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 262
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_1
    return-object v0
.end method

.method public findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 227
    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 230
    :cond_0
    return-object v0
.end method

.method public findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v0

    .line 289
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    .line 664
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    .line 397
    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    .line 400
    :cond_0
    return-object v0
.end method

.method public findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 436
    if-nez v1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 445
    :cond_0
    :goto_0
    return-object v0

    .line 438
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    if-ne v1, v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 441
    if-nez v0, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    .line 306
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 164
    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 167
    :cond_0
    return-object v0
.end method

.method public isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    .line 406
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public resolveSetterConflict(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 489
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->resolveSetterConflict(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 490
    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_secondary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->resolveSetterConflict(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 493
    :cond_0
    return-object v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;->_primary:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->version()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method
