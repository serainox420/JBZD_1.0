.class final Lcom/flurry/sdk/jh$5;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jh;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jh;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/flurry/sdk/jh$5;->a:Lcom/flurry/sdk/jh;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/flurry/sdk/jh$5;->a:Lcom/flurry/sdk/jh;

    invoke-static {v0}, Lcom/flurry/sdk/jh;->g(Lcom/flurry/sdk/jh;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lcom/flurry/sdk/hr;->a:Lcom/flurry/sdk/im;

    .line 351
    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 2086
    iget-object v0, v0, Lcom/flurry/sdk/hr;->a:Lcom/flurry/sdk/im;

    .line 352
    invoke-virtual {v0}, Lcom/flurry/sdk/im;->c()V

    .line 356
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 2094
    iget-object v0, v0, Lcom/flurry/sdk/hr;->c:Lcom/flurry/sdk/io;

    .line 356
    if-eqz v0, :cond_1

    .line 357
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jh$5$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jh$5$1;-><init>(Lcom/flurry/sdk/jh$5;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 364
    :cond_1
    return-void
.end method
