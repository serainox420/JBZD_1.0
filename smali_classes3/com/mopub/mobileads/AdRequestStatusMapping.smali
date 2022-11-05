.class public Lcom/mopub/mobileads/AdRequestStatusMapping;
.super Ljava/lang/Object;
.source "AdRequestStatusMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdRequestStatusMapping$a;,
        Lcom/mopub/mobileads/AdRequestStatusMapping$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/AdRequestStatusMapping$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    .line 19
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    new-instance v1, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    sget-object v2, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->LOADED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    invoke-direct {v1, v2, p2, p3, p4}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;-><init>(Lcom/mopub/mobileads/AdRequestStatusMapping$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    new-instance v1, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    sget-object v2, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->LOADING:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    invoke-direct {v1, v2}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;-><init>(Lcom/mopub/mobileads/AdRequestStatusMapping$b;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    .line 45
    sget-object v1, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->PLAYED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a(Lcom/mopub/mobileads/AdRequestStatusMapping$a;Lcom/mopub/mobileads/AdRequestStatusMapping$b;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    new-instance v1, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    sget-object v2, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->PLAYED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    invoke-direct {v1, v2}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;-><init>(Lcom/mopub/mobileads/AdRequestStatusMapping$b;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    .line 53
    if-eqz v0, :cond_0

    sget-object v1, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->LOADED:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    invoke-static {v0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a(Lcom/mopub/mobileads/AdRequestStatusMapping$a;)Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    invoke-static {v0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a(Lcom/mopub/mobileads/AdRequestStatusMapping$a;)Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    move-result-object v0

    sget-object v2, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->LOADING:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    invoke-static {v0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b(Lcom/mopub/mobileads/AdRequestStatusMapping$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    invoke-static {v0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->c(Lcom/mopub/mobileads/AdRequestStatusMapping$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    invoke-static {v0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->d(Lcom/mopub/mobileads/AdRequestStatusMapping$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a(Lcom/mopub/mobileads/AdRequestStatusMapping$a;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b(Lcom/mopub/mobileads/AdRequestStatusMapping$a;Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method
