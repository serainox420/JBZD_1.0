.class Lcom/inmobi/monetization/IMInterstitial$2;
.super Ljava/lang/Object;
.source "IMInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/IMInterstitial;->a(ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/inmobi/monetization/internal/AdErrorCode;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/inmobi/monetization/IMInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMInterstitial;ILcom/inmobi/monetization/internal/AdErrorCode;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    iput p2, p0, Lcom/inmobi/monetization/IMInterstitial$2;->a:I

    iput-object p3, p0, Lcom/inmobi/monetization/IMInterstitial$2;->b:Lcom/inmobi/monetization/internal/AdErrorCode;

    iput-object p4, p0, Lcom/inmobi/monetization/IMInterstitial$2;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 354
    iget v0, p0, Lcom/inmobi/monetization/IMInterstitial$2;->a:I

    packed-switch v0, :pswitch_data_0

    .line 383
    const-string v0, "[InMobi]-[Monetization]"

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$2;->b:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/AdErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    iget-object v2, p0, Lcom/inmobi/monetization/IMInterstitial$2;->b:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-static {v2}, Lcom/inmobi/monetization/IMErrorCode;->a(Lcom/inmobi/monetization/internal/AdErrorCode;)Lcom/inmobi/monetization/IMErrorCode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMInterstitialListener;->onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V

    goto :goto_0

    .line 369
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMInterstitialListener;->onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V

    goto :goto_0

    .line 373
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMInterstitialListener;->onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V

    goto :goto_0

    .line 376
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    iget-object v2, p0, Lcom/inmobi/monetization/IMInterstitial$2;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitialListener;->onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V

    goto :goto_0

    .line 379
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->b(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMIncentivisedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    invoke-static {v0}, Lcom/inmobi/monetization/IMInterstitial;->b(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMIncentivisedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial$2;->d:Lcom/inmobi/monetization/IMInterstitial;

    iget-object v2, p0, Lcom/inmobi/monetization/IMInterstitial$2;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMIncentivisedListener;->onIncentCompleted(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
