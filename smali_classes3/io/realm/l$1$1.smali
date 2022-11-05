.class Lio/realm/l$1$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/l$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lio/realm/internal/SharedRealm$b;

.field final synthetic b:Lio/realm/l$1;


# direct methods
.method constructor <init>(Lio/realm/l$1;[Lio/realm/internal/SharedRealm$b;)V
    .locals 0

    .prologue
    .line 1451
    iput-object p1, p0, Lio/realm/l$1$1;->b:Lio/realm/l$1;

    iput-object p2, p0, Lio/realm/l$1$1;->a:[Lio/realm/internal/SharedRealm$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1454
    iget-object v0, p0, Lio/realm/l$1$1;->b:Lio/realm/l$1;

    iget-object v0, v0, Lio/realm/l$1;->g:Lio/realm/l;

    invoke-virtual {v0}, Lio/realm/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lio/realm/l$1$1;->b:Lio/realm/l$1;

    iget-object v0, v0, Lio/realm/l$1;->d:Lio/realm/l$a$b;

    invoke-interface {v0}, Lio/realm/l$a$b;->a()V

    .line 1471
    :goto_0
    return-void

    .line 1461
    :cond_0
    iget-object v0, p0, Lio/realm/l$1$1;->b:Lio/realm/l$1;

    iget-object v0, v0, Lio/realm/l$1;->g:Lio/realm/l;

    iget-object v0, v0, Lio/realm/l;->e:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->i()Lio/realm/internal/SharedRealm$b;

    move-result-object v0

    iget-object v1, p0, Lio/realm/l$1$1;->a:[Lio/realm/internal/SharedRealm$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm$b;->a(Lio/realm/internal/SharedRealm$b;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1462
    iget-object v0, p0, Lio/realm/l$1$1;->b:Lio/realm/l$1;

    iget-object v0, v0, Lio/realm/l$1;->g:Lio/realm/l;

    iget-object v0, v0, Lio/realm/l;->e:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->a:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lio/realm/l$1$1$1;

    invoke-direct {v1, p0}, Lio/realm/l$1$1$1;-><init>(Lio/realm/l$1$1;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->addTransactionCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1469
    :cond_1
    iget-object v0, p0, Lio/realm/l$1$1;->b:Lio/realm/l$1;

    iget-object v0, v0, Lio/realm/l$1;->d:Lio/realm/l$a$b;

    invoke-interface {v0}, Lio/realm/l$a$b;->a()V

    goto :goto_0
.end method
