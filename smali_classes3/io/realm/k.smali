.class public final Lio/realm/k;
.super Ljava/lang/Object;
.source "ProxyState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/t;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:J

.field private b:Lio/realm/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lio/realm/internal/n;

.field private e:Lio/realm/b;

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/o",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/k;->c:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/k;->h:Ljava/util/List;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/k;->a:J

    .line 45
    return-void
.end method

.method public constructor <init>(Lio/realm/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/k;->c:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/k;->h:Ljava/util/List;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/k;->a:J

    .line 48
    iput-object p1, p0, Lio/realm/k;->b:Lio/realm/t;

    .line 49
    return-void
.end method

.method static synthetic a(Lio/realm/k;)Lio/realm/internal/n;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    return-object v0
.end method

.method static synthetic b(Lio/realm/k;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lio/realm/k;->k()V

    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lio/realm/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lio/realm/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/o;

    .line 89
    iget-object v2, p0, Lio/realm/k;->e:Lio/realm/b;

    iget-object v2, v2, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/realm/k;->e:Lio/realm/b;

    iget-object v2, v2, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/SharedRealm;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lio/realm/k;->b:Lio/realm/t;

    invoke-interface {v0, v2}, Lio/realm/o;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lio/realm/k;->e:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/k;->e:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lio/realm/k;->e:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->a:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lio/realm/k$1;

    invoke-direct {v1, p0}, Lio/realm/k$1;-><init>(Lio/realm/k;)V

    invoke-virtual {v0, p0, v1}, Lio/realm/internal/RealmNotifier;->addChangeListener(Ljava/lang/Object;Lio/realm/o;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lio/realm/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/realm/k;->e:Lio/realm/b;

    return-object v0
.end method

.method public a(Lio/realm/b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lio/realm/k;->e:Lio/realm/b;

    .line 57
    return-void
.end method

.method public a(Lio/realm/internal/n;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    .line 65
    return-void
.end method

.method public a(Lio/realm/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/o",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lio/realm/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/realm/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lio/realm/k;->l()V

    .line 105
    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lio/realm/k;->g:Ljava/util/List;

    .line 81
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lio/realm/k;->f:Z

    .line 73
    return-void
.end method

.method public b()Lio/realm/internal/n;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    return-object v0
.end method

.method public b(Lio/realm/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/o",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lio/realm/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lio/realm/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lio/realm/k;->e:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->a:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0}, Lio/realm/internal/RealmNotifier;->removeChangeListeners(Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lio/realm/k;->f:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lio/realm/k;->g:Ljava/util/List;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lio/realm/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lio/realm/k;->e:Lio/realm/b;

    iget-object v0, v0, Lio/realm/b;->e:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->a:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0}, Lio/realm/internal/RealmNotifier;->removeChangeListeners(Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    invoke-interface {v0}, Lio/realm/internal/n;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/k;->a:J

    .line 125
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lio/realm/k;->c:Z

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/k;->c:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/k;->g:Ljava/util/List;

    .line 135
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    instance-of v0, v0, Lio/realm/internal/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    instance-of v0, v0, Lio/realm/internal/j;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    check-cast v0, Lio/realm/internal/j;

    invoke-virtual {v0}, Lio/realm/internal/j;->a()Lio/realm/internal/n;

    move-result-object v0

    iput-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    .line 165
    iget-object v0, p0, Lio/realm/k;->d:Lio/realm/internal/n;

    instance-of v0, v0, Lio/realm/internal/InvalidRow;

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lio/realm/k;->l()V

    .line 168
    :cond_0
    invoke-direct {p0}, Lio/realm/k;->k()V

    .line 170
    :cond_1
    return-void
.end method
