.class Lbolts/i$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/i;->c(Lbolts/h;Ljava/util/concurrent/Executor;Lbolts/e;)Lbolts/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/h",
        "<TTResult;",
        "Lbolts/i",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/e;

.field final synthetic b:Lbolts/h;

.field final synthetic c:Lbolts/i;


# direct methods
.method constructor <init>(Lbolts/i;Lbolts/e;Lbolts/h;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lbolts/i$3;->c:Lbolts/i;

    iput-object p2, p0, Lbolts/i$3;->a:Lbolts/e;

    iput-object p3, p0, Lbolts/i$3;->b:Lbolts/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/i;)Lbolts/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/i",
            "<TTResult;>;)",
            "Lbolts/i",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lbolts/i$3;->a:Lbolts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/i$3;->a:Lbolts/e;

    invoke-virtual {v0}, Lbolts/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-static {}, Lbolts/i;->h()Lbolts/i;

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    .line 761
    :cond_0
    invoke-virtual {p1}, Lbolts/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {p1}, Lbolts/i;->g()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/i;->a(Ljava/lang/Exception;)Lbolts/i;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_1
    invoke-virtual {p1}, Lbolts/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 764
    invoke-static {}, Lbolts/i;->h()Lbolts/i;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, Lbolts/i$3;->b:Lbolts/h;

    invoke-virtual {p1, v0}, Lbolts/i;->a(Lbolts/h;)Lbolts/i;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(Lbolts/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 754
    invoke-virtual {p0, p1}, Lbolts/i$3;->a(Lbolts/i;)Lbolts/i;

    move-result-object v0

    return-object v0
.end method
