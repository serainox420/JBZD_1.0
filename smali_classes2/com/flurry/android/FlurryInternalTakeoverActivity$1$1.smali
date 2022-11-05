.class final Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/FlurryInternalTakeoverActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gx;

.field final synthetic b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryInternalTakeoverActivity$1;Lcom/flurry/sdk/gx;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iput-object p2, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 315
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget v0, v0, Lcom/flurry/sdk/gx;->d:I

    .line 316
    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity$3;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_0
    return-void

    .line 319
    :pswitch_0
    invoke-static {}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RELOAD_ACTIVITY Event was fired for adObject:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-object v2, v2, Lcom/flurry/sdk/gx;->a:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-object v2, v2, Lcom/flurry/sdk/gx;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and should Close Ad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-boolean v2, v2, Lcom/flurry/sdk/gx;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    new-instance v1, Lcom/flurry/sdk/hh;

    iget-object v2, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-object v2, v2, Lcom/flurry/sdk/gx;->a:Lcom/flurry/sdk/r;

    iget-object v3, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-object v3, v3, Lcom/flurry/sdk/gx;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->a:Lcom/flurry/sdk/gx;

    iget-boolean v4, v4, Lcom/flurry/sdk/gx;->c:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/sdk/hh;-><init>(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a(Lcom/flurry/android/FlurryInternalTakeoverActivity;Lcom/flurry/sdk/hh;)Lcom/flurry/sdk/hh;

    .line 321
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    iget-object v1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v1, v1, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a(Lcom/flurry/android/FlurryInternalTakeoverActivity;)Lcom/flurry/sdk/hh;

    move-result-object v1

    .line 1030
    iget-object v1, v1, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    .line 321
    invoke-static {v0, v1}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a(Lcom/flurry/android/FlurryInternalTakeoverActivity;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/r;

    .line 322
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->b(Lcom/flurry/android/FlurryInternalTakeoverActivity;)Lcom/flurry/sdk/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    invoke-static {}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot launch Activity. No Ad Controller"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->finish()V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V

    .line 329
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->d(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V

    .line 330
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V

    .line 331
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V

    goto/16 :goto_0

    .line 338
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->g(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V

    .line 339
    invoke-static {}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSE_ACTIVITY Event was fired :"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1$1;->b:Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    iget-object v0, v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;->a:Lcom/flurry/android/FlurryInternalTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->finish()V

    goto/16 :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
