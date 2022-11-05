.class final Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gx;

.field final synthetic b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;Lcom/flurry/sdk/gx;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iput-object p2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 295
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget v0, v0, Lcom/flurry/sdk/gx;->d:I

    .line 296
    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$3;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 299
    :pswitch_0
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RELOAD_ACTIVITY Event was fired for adObject:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-object v3, v3, Lcom/flurry/sdk/gx;->a:Lcom/flurry/sdk/r;

    invoke-interface {v3}, Lcom/flurry/sdk/r;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-object v3, v3, Lcom/flurry/sdk/gx;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and should Close Ad:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-boolean v3, v3, Lcom/flurry/sdk/gx;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    new-instance v1, Lcom/flurry/sdk/hh;

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-object v2, v2, Lcom/flurry/sdk/gx;->a:Lcom/flurry/sdk/r;

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-object v3, v3, Lcom/flurry/sdk/gx;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-boolean v4, v4, Lcom/flurry/sdk/gx;->c:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/sdk/hh;-><init>(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/hh;)Lcom/flurry/sdk/hh;

    .line 301
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v1, v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/hh;

    move-result-object v1

    .line 1030
    iget-object v1, v1, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    .line 301
    invoke-static {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/r;

    .line 302
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot launch Activity. No Ad Controller"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    .line 309
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    .line 310
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    .line 311
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    goto/16 :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    .line 319
    invoke-static {}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_ACTIVITY Event was fired :"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto/16 :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
