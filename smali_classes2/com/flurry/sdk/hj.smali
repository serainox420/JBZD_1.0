.class public final Lcom/flurry/sdk/hj;
.super Lcom/flurry/sdk/hl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/hl;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 32
    .line 1041
    iget-object v0, p0, Lcom/flurry/sdk/hl;->b:Lcom/flurry/sdk/r;

    .line 33
    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    .line 2078
    iget-object v1, v1, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 2262
    iget-boolean v1, v1, Lcom/flurry/sdk/ay;->g:Z

    .line 33
    if-eqz v1, :cond_0

    .line 3041
    new-instance v1, Lcom/flurry/sdk/gx;

    invoke-direct {v1}, Lcom/flurry/sdk/gx;-><init>()V

    .line 3042
    iput-object v0, v1, Lcom/flurry/sdk/gx;->a:Lcom/flurry/sdk/r;

    .line 3043
    iput-object v3, v1, Lcom/flurry/sdk/gx;->b:Ljava/lang/String;

    .line 3044
    iput-boolean v2, v1, Lcom/flurry/sdk/gx;->c:Z

    .line 4025
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/hj;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3, v2}, Lcom/flurry/sdk/fo;->a(Landroid/content/Context;Lcom/flurry/sdk/r;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
