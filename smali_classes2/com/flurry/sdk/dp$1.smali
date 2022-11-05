.class final Lcom/flurry/sdk/dp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dp;->a()Lcom/flurry/sdk/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lj",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/do;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dp;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/flurry/sdk/dp$1;->a:Lcom/flurry/sdk/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/lg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lg",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/do;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 43
    new-instance v0, Lcom/flurry/sdk/lf;

    new-instance v1, Lcom/flurry/sdk/do$c;

    invoke-direct {v1}, Lcom/flurry/sdk/do$c;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/lf;-><init>(Lcom/flurry/sdk/lg;)V

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 45
    new-instance v0, Lcom/flurry/sdk/lf;

    new-instance v1, Lcom/flurry/sdk/do$b;

    invoke-direct {v1}, Lcom/flurry/sdk/do$b;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/lf;-><init>(Lcom/flurry/sdk/lg;)V

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lcom/flurry/sdk/lf;

    new-instance v1, Lcom/flurry/sdk/do$a;

    invoke-direct {v1}, Lcom/flurry/sdk/do$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/lf;-><init>(Lcom/flurry/sdk/lg;)V

    goto :goto_0
.end method
