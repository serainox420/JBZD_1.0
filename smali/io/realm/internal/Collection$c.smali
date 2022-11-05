.class public abstract Lio/realm/internal/Collection$c;
.super Ljava/lang/Object;
.source "Collection.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lio/realm/internal/Collection;

.field protected c:I


# direct methods
.method public constructor <init>(Lio/realm/internal/Collection;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lio/realm/internal/Collection$c;->c:I

    .line 96
    iput-object p1, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    .line 98
    invoke-static {p1}, Lio/realm/internal/Collection;->access$000(Lio/realm/internal/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {p1}, Lio/realm/internal/Collection;->access$100(Lio/realm/internal/Collection;)Lio/realm/internal/SharedRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lio/realm/internal/Collection$c;->a()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    invoke-static {v0}, Lio/realm/internal/Collection;->access$100(Lio/realm/internal/Collection;)Lio/realm/internal/SharedRealm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/internal/SharedRealm;->a(Lio/realm/internal/Collection$c;)V

    goto :goto_0
.end method


# virtual methods
.method a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    invoke-virtual {v0, p1}, Lio/realm/internal/Collection;->getUncheckedRow(I)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/internal/Collection$c;->b(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    invoke-virtual {v0}, Lio/realm/internal/Collection;->createSnapshot()Lio/realm/internal/Collection;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    .line 145
    return-void
.end method

.method protected abstract b(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TT;"
        }
    .end annotation
.end method

.method b()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    .line 153
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "No outside changes to a Realm is allowed while iterating a living Realm collection."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lio/realm/internal/Collection$c;->c()V

    .line 116
    iget v0, p0, Lio/realm/internal/Collection$c;->c:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v2, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    invoke-virtual {v2}, Lio/realm/internal/Collection;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lio/realm/internal/Collection$c;->c()V

    .line 125
    iget v0, p0, Lio/realm/internal/Collection$c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/internal/Collection$c;->c:I

    .line 126
    iget v0, p0, Lio/realm/internal/Collection$c;->c:I

    int-to-long v0, v0

    iget-object v2, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    invoke-virtual {v2}, Lio/realm/internal/Collection;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot access index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/internal/Collection$c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/internal/Collection$c;->b:Lio/realm/internal/Collection;

    invoke-virtual {v2}, Lio/realm/internal/Collection;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget v0, p0, Lio/realm/internal/Collection$c;->c:I

    invoke-virtual {p0, v0}, Lio/realm/internal/Collection$c;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported by RealmResults iterators."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
