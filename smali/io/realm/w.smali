.class public Lio/realm/w;
.super Lio/realm/i;
.source "RealmResults.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/t;",
        ">",
        "Lio/realm/i",
        "<TE;>;"
    }
.end annotation


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
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lio/realm/i;-><init>(Lio/realm/b;Lio/realm/internal/Collection;Ljava/lang/Class;)V

    .line 57
    return-void
.end method

.method constructor <init>(Lio/realm/b;Lio/realm/internal/Collection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lio/realm/i;-><init>(Lio/realm/b;Lio/realm/internal/Collection;Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lio/realm/t;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/realm/i;->a(I)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(ILio/realm/t;)Lio/realm/t;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lio/realm/i;->a(ILio/realm/t;)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/realm/w;->a:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 89
    iget-object v0, p0, Lio/realm/w;->d:Lio/realm/internal/Collection;

    invoke-virtual {v0}, Lio/realm/internal/Collection;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Lio/realm/t;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/realm/i;->a(Lio/realm/t;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lio/realm/i;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/realm/i;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(I)Lio/realm/t;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/realm/i;->b(I)Lio/realm/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(ILio/realm/t;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lio/realm/i;->b(ILio/realm/t;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lio/realm/w;->a:Lio/realm/b;

    invoke-virtual {v0}, Lio/realm/b;->e()V

    .line 104
    iget-object v0, p0, Lio/realm/w;->d:Lio/realm/internal/Collection;

    invoke-virtual {v0}, Lio/realm/internal/Collection;->load()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Lio/realm/i;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/realm/i;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lio/realm/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lio/realm/i;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/realm/i;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/realm/i;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/realm/i;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1}, Lio/realm/i;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lio/realm/i;->size()I

    move-result v0

    return v0
.end method
