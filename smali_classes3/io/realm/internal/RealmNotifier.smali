.class public abstract Lio/realm/internal/RealmNotifier;
.super Ljava/lang/Object;
.source "RealmNotifier.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/RealmNotifier$a;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# instance fields
.field private final onChangeCallBack:Lio/realm/internal/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/i$a",
            "<",
            "Lio/realm/internal/RealmNotifier$a;",
            ">;"
        }
    .end annotation
.end field

.field private realmObserverPairs:Lio/realm/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/i",
            "<",
            "Lio/realm/internal/RealmNotifier$a;",
            ">;"
        }
    .end annotation
.end field

.field private sharedRealm:Lio/realm/internal/SharedRealm;

.field private transactionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/realm/internal/SharedRealm;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lio/realm/internal/i;

    invoke-direct {v0}, Lio/realm/internal/i;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/i;

    .line 62
    new-instance v0, Lio/realm/internal/RealmNotifier$1;

    invoke-direct {v0, p0}, Lio/realm/internal/RealmNotifier$1;-><init>(Lio/realm/internal/RealmNotifier;)V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->onChangeCallBack:Lio/realm/internal/i$a;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lio/realm/internal/RealmNotifier;->sharedRealm:Lio/realm/internal/SharedRealm;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/RealmNotifier;)Lio/realm/internal/SharedRealm;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->sharedRealm:Lio/realm/internal/SharedRealm;

    return-object v0
.end method

.method private removeAllChangeListeners()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/i;

    invoke-virtual {v0}, Lio/realm/internal/i;->b()V

    .line 141
    return-void
.end method


# virtual methods
.method public addChangeListener(Ljava/lang/Object;Lio/realm/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lio/realm/internal/RealmNotifier$a;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmNotifier$a;-><init>(Ljava/lang/Object;Lio/realm/o;)V

    .line 126
    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/i;

    invoke-virtual {v1, v0}, Lio/realm/internal/i;->a(Lio/realm/internal/i$b;)V

    .line 127
    return-void
.end method

.method public addTransactionCallback(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method beforeNotify()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->n()V

    .line 114
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lio/realm/internal/RealmNotifier;->removeAllChangeListeners()V

    .line 122
    return-void
.end method

.method didChange()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/i;

    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->onChangeCallBack:Lio/realm/internal/i$a;

    invoke-virtual {v0, v1}, Lio/realm/internal/i;->a(Lio/realm/internal/i$a;)V

    .line 98
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 99
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    return-void
.end method

.method public getListenersListSize()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/i;

    invoke-virtual {v0}, Lio/realm/internal/i;->c()I

    move-result v0

    return v0
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public removeChangeListener(Ljava/lang/Object;Lio/realm/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lio/realm/o",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/i;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public removeChangeListeners(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/i;

    invoke-virtual {v0, p1}, Lio/realm/internal/i;->a(Ljava/lang/Object;)V

    .line 135
    return-void
.end method
