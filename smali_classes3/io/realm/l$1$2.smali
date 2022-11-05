.class Lio/realm/l$1$2;
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
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lio/realm/l$1;


# direct methods
.method constructor <init>(Lio/realm/l$1;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1474
    iput-object p1, p0, Lio/realm/l$1$2;->b:Lio/realm/l$1;

    iput-object p2, p0, Lio/realm/l$1$2;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1477
    iget-object v0, p0, Lio/realm/l$1$2;->b:Lio/realm/l$1;

    iget-object v0, v0, Lio/realm/l$1;->f:Lio/realm/l$a$a;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lio/realm/l$1$2;->b:Lio/realm/l$1;

    iget-object v0, v0, Lio/realm/l$1;->f:Lio/realm/l$a$a;

    iget-object v1, p0, Lio/realm/l$1$2;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/realm/l$a$a;->a(Ljava/lang/Throwable;)V

    .line 1482
    return-void

    .line 1480
    :cond_0
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Async transaction failed"

    iget-object v2, p0, Lio/realm/l$1$2;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
