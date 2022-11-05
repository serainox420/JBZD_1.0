.class final Lcom/flurry/sdk/gw$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gw;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gw;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/flurry/sdk/gw$3;->a:Lcom/flurry/sdk/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    .line 388
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/gw;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gw$3;->a:Lcom/flurry/sdk/gw;

    invoke-static {v3}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " framework_err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " impl_err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/flurry/sdk/gw$3;->a:Lcom/flurry/sdk/gw;

    sget-object v1, Lcom/flurry/sdk/gw$b;->h:Lcom/flurry/sdk/gw$b;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;Lcom/flurry/sdk/gw$b;)Lcom/flurry/sdk/gw$b;

    .line 390
    iget-object v0, p0, Lcom/flurry/sdk/gw$3;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->e(Lcom/flurry/sdk/gw;)Lcom/flurry/sdk/gw$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/flurry/sdk/gw$3;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->e(Lcom/flurry/sdk/gw;)Lcom/flurry/sdk/gw$a;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gw$3;->a:Lcom/flurry/sdk/gw;

    invoke-static {v1}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/bb;->q:Lcom/flurry/sdk/bb;

    .line 1040
    iget v2, v2, Lcom/flurry/sdk/bb;->z:I

    .line 391
    invoke-interface {v0, v1, p2, p3}, Lcom/flurry/sdk/gw$a;->a(Ljava/lang/String;II)V

    .line 393
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
