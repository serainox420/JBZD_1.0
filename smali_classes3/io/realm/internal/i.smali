.class Lio/realm/internal/i;
.super Ljava/lang/Object;
.source "ObserverPairList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/i$a;,
        Lio/realm/internal/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/internal/i$b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/i;->b:Z

    return-void
.end method


# virtual methods
.method a(Lio/realm/internal/i$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/i$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/i$b;

    .line 100
    iget-boolean v2, p0, Lio/realm/internal/i;->b:Z

    if-eqz v2, :cond_2

    .line 111
    :cond_1
    return-void

    .line 103
    :cond_2
    iget-object v2, v0, Lio/realm/internal/i$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 104
    if-nez v2, :cond_3

    .line 105
    iget-object v2, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_3
    iget-boolean v3, v0, Lio/realm/internal/i$b;->d:Z

    if-nez v3, :cond_0

    .line 107
    invoke-interface {p1, v0, v2}, Lio/realm/internal/i$a;->a(Lio/realm/internal/i$b;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lio/realm/internal/i$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iput-boolean v1, p1, Lio/realm/internal/i$b;->d:Z

    .line 127
    :cond_0
    iget-boolean v0, p0, Lio/realm/internal/i;->b:Z

    if-eqz v0, :cond_1

    .line 128
    iput-boolean v1, p0, Lio/realm/internal/i;->b:Z

    .line 130
    :cond_1
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/i$b;

    .line 144
    iget-object v2, v0, Lio/realm/internal/i$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 146
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/realm/internal/i$b;->d:Z

    .line 147
    iget-object v2, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TS;TU;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/i$b;

    .line 134
    iget-object v2, v0, Lio/realm/internal/i$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, v0, Lio/realm/internal/i$b;->c:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/realm/internal/i$b;->d:Z

    .line 136
    iget-object v1, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/internal/i;->b:Z

    .line 119
    iget-object v0, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lio/realm/internal/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
