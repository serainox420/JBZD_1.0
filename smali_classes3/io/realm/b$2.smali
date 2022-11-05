.class final Lio/realm/b$2;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/b;->a(Lio/realm/p;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/p;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/realm/p;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lio/realm/b$2;->a:Lio/realm/p;

    iput-object p2, p0, Lio/realm/b$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 553
    if-eqz p1, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/realm/b$2;->a:Lio/realm/p;

    .line 555
    invoke-virtual {v2}, Lio/realm/p;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    iget-object v0, p0, Lio/realm/b$2;->a:Lio/realm/p;

    invoke-virtual {v0}, Lio/realm/p;->l()Ljava/lang/String;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lio/realm/b$2;->a:Lio/realm/p;

    invoke-virtual {v1}, Lio/realm/p;->a()Ljava/io/File;

    move-result-object v1

    .line 560
    iget-object v2, p0, Lio/realm/b$2;->a:Lio/realm/p;

    invoke-virtual {v2}, Lio/realm/p;->b()Ljava/lang/String;

    move-result-object v2

    .line 561
    iget-object v3, p0, Lio/realm/b$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, v2}, Lio/realm/internal/Util;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 562
    return-void
.end method
