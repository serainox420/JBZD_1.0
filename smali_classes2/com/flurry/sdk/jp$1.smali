.class final Lcom/flurry/sdk/jp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jp;
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
.field final synthetic a:Lcom/flurry/sdk/jp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jp;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/sdk/jp$1;->a:Lcom/flurry/sdk/jp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 4

    .prologue
    .line 76
    .line 1079
    iget-object v0, p0, Lcom/flurry/sdk/jp$1;->a:Lcom/flurry/sdk/jp;

    invoke-static {v0}, Lcom/flurry/sdk/jp;->a(Lcom/flurry/sdk/jp;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jp$1;->a:Lcom/flurry/sdk/jp;

    invoke-static {v0}, Lcom/flurry/sdk/jp;->a(Lcom/flurry/sdk/jp;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1080
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/sdk/jp;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location received in 90 seconds , stopping LocationManager"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/flurry/sdk/jp$1;->a:Lcom/flurry/sdk/jp;

    invoke-static {v0}, Lcom/flurry/sdk/jp;->b(Lcom/flurry/sdk/jp;)V

    .line 76
    :cond_0
    return-void
.end method
