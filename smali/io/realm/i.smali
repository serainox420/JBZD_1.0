.class abstract Lio/realm/i;
.super Ljava/util/AbstractList;
.source "OrderedRealmCollectionImpl.java"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/i$b;,
        Lio/realm/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/t;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Lio/realm/OrderedRealmCollection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:Lio/realm/b;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field final d:Lio/realm/internal/Collection;


# direct methods
.method constructor <init>(Lio/realm/b;Lio/realm/internal/Collection;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/b;",
            "Lio/realm/internal/Collection;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lio/realm/i;->a:Lio/realm/b;

    .line 32
    iput-object p3, p0, Lio/realm/i;->b:Ljava/lang/Class;

    .line 33
    iput-object p2, p0, Lio/realm/i;->d:Lio/realm/internal/Collection;

    .line 34
    return-void
.end method

.method constructor <init>(Lio/realm/b;Lio/realm/internal/Collection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 37
    iput-object p1, p0, Lio/realm/i;->a:Lio/realm/b;

    .line 38
    iput-object p3, p0, Lio/realm/i;->c:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lio/realm/i;->d:Lio/realm/internal/Collection;

    .line 40
    return-void
.end method


# virtual methods
.method public a(I)Lio/realm/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 106
    iget-object v0, p0, Lio/realm/i;->a:Lio/realm/b;

    iget-object v1, p0, Lio/realm/i;->b:Ljava/lang/Class;

    iget-object v2, p0, Lio/realm/i;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/realm/i;->d:Lio/realm/internal/Collection;

    invoke-virtual {v3, p1}, Lio/realm/internal/Collection;->getUncheckedRow(I)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/b;->a(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public a(ILio/realm/t;)Lio/realm/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lio/realm/t;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    check-cast p2, Lio/realm/t;

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->b(ILio/realm/t;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    check-cast p1, Lio/realm/t;

    invoke-virtual {p0, p1}, Lio/realm/i;->a(Lio/realm/t;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 503
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 514
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Lio/realm/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(ILio/realm/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 491
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 469
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Lio/realm/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    instance-of v0, p1, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 81
    check-cast v0, Lio/realm/internal/l;

    .line 82
    invoke-interface {v0}, Lio/realm/internal/l;->c()Lio/realm/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/k;->b()Lio/realm/internal/n;

    move-result-object v0

    sget-object v2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 93
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lio/realm/i;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/t;

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lio/realm/i;->a(I)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lio/realm/i$a;

    invoke-direct {v0, p0}, Lio/realm/i$a;-><init>(Lio/realm/i;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lio/realm/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/i$b;-><init>(Lio/realm/i;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lio/realm/i$b;

    invoke-direct {v0, p0, p1}, Lio/realm/i$b;-><init>(Lio/realm/i;I)V

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lio/realm/i;->b(I)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is not supported by \'RealmResults\' or \'OrderedRealmCollectionSnapshot\'."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    check-cast p2, Lio/realm/t;

    invoke-virtual {p0, p1, p2}, Lio/realm/i;->a(ILio/realm/t;)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lio/realm/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lio/realm/i;->d:Lio/realm/internal/Collection;

    invoke-virtual {v0}, Lio/realm/internal/Collection;->size()J

    move-result-wide v0

    .line 305
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    .line 307
    :goto_0
    return v0

    .line 305
    :cond_0
    long-to-int v0, v0

    goto :goto_0

    .line 307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
