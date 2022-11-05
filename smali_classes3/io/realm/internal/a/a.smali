.class public Lio/realm/internal/a/a;
.super Lio/realm/internal/m;
.source "CompositeMediator.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/internal/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lio/realm/internal/m;)V
    .locals 6

    .prologue
    .line 51
    invoke-direct {p0}, Lio/realm/internal/m;-><init>()V

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    if-eqz p1, :cond_1

    .line 54
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 55
    invoke-virtual {v4}, Lio/realm/internal/m;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 56
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/a/a;->a:Ljava/util/Map;

    .line 61
    return-void
.end method

.method private d(Ljava/lang/Class;)Lio/realm/internal/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;)",
            "Lio/realm/internal/m;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lio/realm/internal/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/m;

    .line 171
    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not part of the schema for this Realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/RealmSchema;",
            ")",
            "Lio/realm/RealmObjectSchema;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lio/realm/internal/a/a;->d(Ljava/lang/Class;)Lio/realm/internal/m;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/m;->a(Ljava/lang/Class;Lio/realm/RealmSchema;)Lio/realm/RealmObjectSchema;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/internal/SharedRealm;",
            ")",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lio/realm/internal/a/a;->d(Ljava/lang/Class;)Lio/realm/internal/m;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1, p2}, Lio/realm/internal/m;->a(Ljava/lang/Class;Lio/realm/internal/SharedRealm;)Lio/realm/internal/Table;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lio/realm/internal/SharedRealm;Z)Lio/realm/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;",
            "Lio/realm/internal/SharedRealm;",
            "Z)",
            "Lio/realm/internal/c;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lio/realm/internal/a/a;->d(Ljava/lang/Class;)Lio/realm/internal/m;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/m;->a(Ljava/lang/Class;Lio/realm/internal/SharedRealm;Z)Lio/realm/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/realm/l;Lio/realm/t;ZLjava/util/Map;)Lio/realm/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Lio/realm/l;",
            "TE;Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/t;",
            "Lio/realm/internal/l;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/a/a;->d(Ljava/lang/Class;)Lio/realm/internal/m;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/realm/internal/m;->a(Lio/realm/l;Lio/realm/t;ZLjava/util/Map;)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/t;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/n;",
            "Lio/realm/internal/c;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lio/realm/internal/a/a;->d(Ljava/lang/Class;)Lio/realm/internal/m;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 102
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/m;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/n;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lio/realm/internal/a/a;->d(Ljava/lang/Class;)Lio/realm/internal/m;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Lio/realm/internal/m;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lio/realm/internal/a/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lio/realm/internal/a/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
