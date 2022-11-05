.class public final Lcom/flurry/sdk/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/flurry/sdk/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ay;",
            ">;",
            "Lcom/flurry/sdk/r;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/flurry/sdk/bl;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bl;->b:Ljava/util/List;

    .line 23
    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/bl;->a(Ljava/util/List;Lcom/flurry/sdk/r;)V

    .line 25
    return-void
.end method

.method private a(Ljava/util/List;Lcom/flurry/sdk/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ay;",
            ">;",
            "Lcom/flurry/sdk/r;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/sdk/bl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ay;

    .line 32
    iget-object v2, p0, Lcom/flurry/sdk/bl;->b:Ljava/util/List;

    new-instance v3, Lcom/flurry/sdk/bk;

    iget-object v4, p0, Lcom/flurry/sdk/bl;->a:Ljava/lang/String;

    invoke-direct {v3, v0, p2, v4}, Lcom/flurry/sdk/bk;-><init>(Lcom/flurry/sdk/ay;Lcom/flurry/sdk/r;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
