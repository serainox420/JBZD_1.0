.class public Lbolts/j;
.super Ljava/lang/Object;
.source "TaskCompletionSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lbolts/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/i",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lbolts/i;

    invoke-direct {v0}, Lbolts/i;-><init>()V

    iput-object v0, p0, Lbolts/j;->a:Lbolts/i;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lbolts/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/i",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lbolts/j;->a:Lbolts/i;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lbolts/j;->a:Lbolts/i;

    invoke-virtual {v0, p1}, Lbolts/i;->b(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lbolts/j;->a:Lbolts/i;

    invoke-virtual {v0, p1}, Lbolts/i;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lbolts/j;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lbolts/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbolts/j;->a:Lbolts/i;

    invoke-virtual {v0}, Lbolts/i;->i()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lbolts/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method
