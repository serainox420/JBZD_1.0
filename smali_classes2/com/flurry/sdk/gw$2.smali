.class final Lcom/flurry/sdk/gw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 377
    iput-object p1, p0, Lcom/flurry/sdk/gw$2;->a:Lcom/flurry/sdk/gw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/flurry/sdk/gw$2;->a:Lcom/flurry/sdk/gw;

    sget-object v1, Lcom/flurry/sdk/gw$b;->f:Lcom/flurry/sdk/gw$b;

    invoke-static {v0, v1}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;Lcom/flurry/sdk/gw$b;)Lcom/flurry/sdk/gw$b;

    .line 380
    iget-object v0, p0, Lcom/flurry/sdk/gw$2;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->e(Lcom/flurry/sdk/gw;)Lcom/flurry/sdk/gw$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/flurry/sdk/gw$2;->a:Lcom/flurry/sdk/gw;

    invoke-static {v0}, Lcom/flurry/sdk/gw;->e(Lcom/flurry/sdk/gw;)Lcom/flurry/sdk/gw$a;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gw$2;->a:Lcom/flurry/sdk/gw;

    invoke-static {v1}, Lcom/flurry/sdk/gw;->a(Lcom/flurry/sdk/gw;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/sdk/gw$a;->b(Ljava/lang/String;)V

    .line 383
    :cond_0
    return-void
.end method
