.class final Lbolts/i$5;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/i;->d(Lbolts/j;Lbolts/h;Lbolts/i;Ljava/util/concurrent/Executor;Lbolts/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbolts/e;

.field final synthetic b:Lbolts/j;

.field final synthetic c:Lbolts/h;

.field final synthetic d:Lbolts/i;


# direct methods
.method constructor <init>(Lbolts/e;Lbolts/j;Lbolts/h;Lbolts/i;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lbolts/i$5;->a:Lbolts/e;

    iput-object p2, p0, Lbolts/i$5;->b:Lbolts/j;

    iput-object p3, p0, Lbolts/i$5;->c:Lbolts/h;

    iput-object p4, p0, Lbolts/i$5;->d:Lbolts/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lbolts/i$5;->a:Lbolts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/i$5;->a:Lbolts/e;

    invoke-virtual {v0}, Lbolts/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lbolts/i$5;->b:Lbolts/j;

    invoke-virtual {v0}, Lbolts/j;->c()V

    .line 945
    :goto_0
    return-void

    .line 917
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbolts/i$5;->c:Lbolts/h;

    iget-object v1, p0, Lbolts/i$5;->d:Lbolts/i;

    invoke-interface {v0, v1}, Lbolts/h;->then(Lbolts/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/i;

    .line 918
    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, Lbolts/i$5;->b:Lbolts/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/j;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    iget-object v0, p0, Lbolts/i$5;->b:Lbolts/j;

    invoke-virtual {v0}, Lbolts/j;->c()V

    goto :goto_0

    .line 921
    :cond_1
    :try_start_1
    new-instance v1, Lbolts/i$5$1;

    invoke-direct {v1, p0}, Lbolts/i$5$1;-><init>(Lbolts/i$5;)V

    invoke-virtual {v0, v1}, Lbolts/i;->a(Lbolts/h;)Lbolts/i;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 942
    :catch_1
    move-exception v0

    .line 943
    iget-object v1, p0, Lbolts/i$5;->b:Lbolts/j;

    invoke-virtual {v1, v0}, Lbolts/j;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
