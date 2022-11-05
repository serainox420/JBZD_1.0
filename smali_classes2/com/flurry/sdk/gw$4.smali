.class final Lcom/flurry/sdk/gw$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gw;
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
.field final synthetic a:Lcom/flurry/sdk/gw;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gw;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 4

    .prologue
    .line 402
    .line 1405
    iget-object v0, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-virtual {v0}, Lcom/flurry/sdk/gw;->getDuration()I

    move-result v0

    .line 1411
    iget-object v1, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    iget-object v2, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-virtual {v2}, Lcom/flurry/sdk/gw;->getCurrentPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;I)I

    .line 1412
    if-ltz v0, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-static {v1}, Lcom/flurry/sdk/gw;->e(Lcom/flurry/sdk/gw;)Lcom/flurry/sdk/gw$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    .line 1419
    invoke-static {v1}, Lcom/flurry/sdk/gw;->f(Lcom/flurry/sdk/gw;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-static {v2}, Lcom/flurry/sdk/gw;->g(Lcom/flurry/sdk/gw;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    .line 1420
    invoke-static {v1}, Lcom/flurry/sdk/gw;->g(Lcom/flurry/sdk/gw;)F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 1421
    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    iget-object v2, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-static {v2}, Lcom/flurry/sdk/gw;->f(Lcom/flurry/sdk/gw;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;F)F

    .line 1422
    iget-object v1, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-static {v1}, Lcom/flurry/sdk/gw;->e(Lcom/flurry/sdk/gw;)Lcom/flurry/sdk/gw$a;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-static {v2}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/flurry/sdk/gw$4;->a:Lcom/flurry/sdk/gw;

    invoke-static {v3}, Lcom/flurry/sdk/gw;->f(Lcom/flurry/sdk/gw;)I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v1, v2, v0, v3}, Lcom/flurry/sdk/gw$a;->a(Ljava/lang/String;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    invoke-static {}, Lcom/flurry/sdk/gw;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video view progress error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
