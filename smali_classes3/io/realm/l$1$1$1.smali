.class Lio/realm/l$1$1$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/l$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/l$1$1;


# direct methods
.method constructor <init>(Lio/realm/l$1$1;)V
    .locals 0

    .prologue
    .line 1462
    iput-object p1, p0, Lio/realm/l$1$1$1;->a:Lio/realm/l$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lio/realm/l$1$1$1;->a:Lio/realm/l$1$1;

    iget-object v0, v0, Lio/realm/l$1$1;->b:Lio/realm/l$1;

    iget-object v0, v0, Lio/realm/l$1;->d:Lio/realm/l$a$b;

    invoke-interface {v0}, Lio/realm/l$a$b;->a()V

    .line 1466
    return-void
.end method
