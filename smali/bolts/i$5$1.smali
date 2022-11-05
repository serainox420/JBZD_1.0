.class Lbolts/i$5$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/i$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/h",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/i$5;


# direct methods
.method constructor <init>(Lbolts/i$5;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lbolts/i$5$1;->a:Lbolts/i$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/i;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/i",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 924
    iget-object v0, p0, Lbolts/i$5$1;->a:Lbolts/i$5;

    iget-object v0, v0, Lbolts/i$5;->a:Lbolts/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/i$5$1;->a:Lbolts/i$5;

    iget-object v0, v0, Lbolts/i$5;->a:Lbolts/e;

    invoke-virtual {v0}, Lbolts/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lbolts/i$5$1;->a:Lbolts/i$5;

    iget-object v0, v0, Lbolts/i$5;->b:Lbolts/j;

    invoke-virtual {v0}, Lbolts/j;->c()V

    .line 936
    :goto_0
    return-object v2

    .line 929
    :cond_0
    invoke-virtual {p1}, Lbolts/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lbolts/i$5$1;->a:Lbolts/i$5;

    iget-object v0, v0, Lbolts/i$5;->b:Lbolts/j;

    invoke-virtual {v0}, Lbolts/j;->c()V

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p1}, Lbolts/i;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lbolts/i$5$1;->a:Lbolts/i$5;

    iget-object v0, v0, Lbolts/i$5;->b:Lbolts/j;

    invoke-virtual {p1}, Lbolts/i;->g()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/j;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, Lbolts/i$5$1;->a:Lbolts/i$5;

    iget-object v0, v0, Lbolts/i$5;->b:Lbolts/j;

    invoke-virtual {p1}, Lbolts/i;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/j;->b(Ljava/lang/Object;)V

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
    .line 921
    invoke-virtual {p0, p1}, Lbolts/i$5$1;->a(Lbolts/i;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
