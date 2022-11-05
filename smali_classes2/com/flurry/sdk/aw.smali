.class public final Lcom/flurry/sdk/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/flurry/sdk/az;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    .line 1344
    invoke-static {}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/ec;

    move-result-object v0

    .line 1345
    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ec;->a(Ljava/lang/String;)Lcom/flurry/sdk/az;

    move-result-object v0

    .line 14
    :goto_0
    iput-object v0, p0, Lcom/flurry/sdk/aw;->a:Lcom/flurry/sdk/az;

    .line 15
    return-void

    .line 1348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
