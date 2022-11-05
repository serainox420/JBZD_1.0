.class public final Lcom/flurry/sdk/et;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/et$a;
    }
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/et$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/flurry/sdk/et$a;

    invoke-direct {v0}, Lcom/flurry/sdk/et$a;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/et;->a:Lcom/flurry/sdk/et$a;

    .line 14
    return-void
.end method

.method static a()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
