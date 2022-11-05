.class public Lcom/millennialmedia/internal/AdMetadata;
.super Ljava/util/HashMap;
.source "AdMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ENHANCED_AD_CONTROL_ENABLED:Ljava/lang/String; = "enhancedAdControlEnabled"

.field public static final TRANSPARENT:Ljava/lang/String; = "x-mm-transparent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public addAll(Lcom/millennialmedia/internal/AdMetadata;)V
    .locals 3

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdMetadata;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/internal/AdMetadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 36
    .line 38
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/AdMetadata;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/AdMetadata;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 46
    :cond_0
    return p2
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 19
    const-string v0, "x-mm-transparent"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/AdMetadata;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
