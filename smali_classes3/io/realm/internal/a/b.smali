.class public Lio/realm/internal/a/b;
.super Lio/realm/internal/m;
.source "FilterableMediator.java"


# instance fields
.field private final a:Lio/realm/internal/m;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/internal/m;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/m;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lio/realm/internal/m;-><init>()V

    .line 60
    iput-object p1, p0, Lio/realm/internal/a/b;->a:Lio/realm/internal/m;

    .line 62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 63
    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Lio/realm/internal/m;->a()Ljava/util/Set;

    move-result-object v2

    .line 65
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 66
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/a/b;->b:Ljava/util/Set;

    .line 72
    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lio/realm/internal/a/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
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

    .line 186
    :cond_0
    return-void
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
    .line 80
    invoke-direct {p0, p1}, Lio/realm/internal/a/b;->d(Ljava/lang/Class;)V

    .line 81
    iget-object v0, p0, Lio/realm/internal/a/b;->a:Lio/realm/internal/m;

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
    .line 85
    invoke-direct {p0, p1}, Lio/realm/internal/a/b;->d(Ljava/lang/Class;)V

    .line 86
    iget-object v0, p0, Lio/realm/internal/a/b;->a:Lio/realm/internal/m;

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
    .line 92
    invoke-direct {p0, p1}, Lio/realm/internal/a/b;->d(Ljava/lang/Class;)V

    .line 93
    iget-object v0, p0, Lio/realm/internal/a/b;->a:Lio/realm/internal/m;

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
    .line 126
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/internal/a/b;->d(Ljava/lang/Class;)V

    .line 127
    iget-object v0, p0, Lio/realm/internal/a/b;->a:Lio/realm/internal/m;

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
    .line 115
    invoke-direct {p0, p1}, Lio/realm/internal/a/b;->d(Ljava/lang/Class;)V

    .line 116
    iget-object v0, p0, Lio/realm/internal/a/b;->a:Lio/realm/internal/m;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

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
    .line 104
    invoke-direct {p0, p1}, Lio/realm/internal/a/b;->d(Ljava/lang/Class;)V

    .line 105
    iget-object v0, p0, Lio/realm/internal/a/b;->a:Lio/realm/internal/m;

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
    .line 121
    iget-object v0, p0, Lio/realm/internal/a/b;->b:Ljava/util/Set;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lio/realm/internal/a/b;->a:Lio/realm/internal/m;

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/realm/internal/a/b;->a:Lio/realm/internal/m;

    invoke-virtual {v0}, Lio/realm/internal/m;->b()Z

    move-result v0

    goto :goto_0
.end method
