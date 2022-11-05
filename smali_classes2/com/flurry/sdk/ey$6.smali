.class final Lcom/flurry/sdk/ey$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/ls;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ey;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ey;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/flurry/sdk/ey$6;->a:Lcom/flurry/sdk/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 4

    .prologue
    .line 214
    .line 1217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flurry/sdk/ey$6;->a:Lcom/flurry/sdk/ey;

    invoke-static {v2}, Lcom/flurry/sdk/ey;->b(Lcom/flurry/sdk/ey;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1218
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ey$6$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ey$6$1;-><init>(Lcom/flurry/sdk/ey$6;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 214
    :cond_0
    return-void
.end method
