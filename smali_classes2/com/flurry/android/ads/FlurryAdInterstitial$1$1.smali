.class final Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/ads/FlurryAdInterstitial$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/d;

.field final synthetic b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

.field final synthetic c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;


# direct methods
.method constructor <init>(Lcom/flurry/android/ads/FlurryAdInterstitial$1;Lcom/flurry/sdk/d;Lcom/flurry/android/ads/FlurryAdInterstitialListener;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iput-object p2, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->a:Lcom/flurry/sdk/d;

    iput-object p3, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 49
    sget-object v0, Lcom/flurry/android/ads/FlurryAdInterstitial$2;->a:[I

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v1, v1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onFetched(Lcom/flurry/android/ads/FlurryAdInterstitial;)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    sget-object v2, Lcom/flurry/android/ads/FlurryAdErrorType;->FETCH:Lcom/flurry/android/ads/FlurryAdErrorType;

    iget-object v3, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v3, v3, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/bb;

    .line 1040
    iget v3, v3, Lcom/flurry/sdk/bb;->z:I

    .line 55
    invoke-interface {v0, v1, v2, v3}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onError(Lcom/flurry/android/ads/FlurryAdInterstitial;Lcom/flurry/android/ads/FlurryAdErrorType;I)V

    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onRendered(Lcom/flurry/android/ads/FlurryAdInterstitial;)V

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    sget-object v2, Lcom/flurry/android/ads/FlurryAdErrorType;->RENDER:Lcom/flurry/android/ads/FlurryAdErrorType;

    iget-object v3, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v3, v3, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/bb;

    .line 2040
    iget v3, v3, Lcom/flurry/sdk/bb;->z:I

    .line 63
    invoke-interface {v0, v1, v2, v3}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onError(Lcom/flurry/android/ads/FlurryAdInterstitial;Lcom/flurry/android/ads/FlurryAdErrorType;I)V

    goto :goto_0

    .line 67
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onDisplay(Lcom/flurry/android/ads/FlurryAdInterstitial;)V

    goto :goto_0

    .line 71
    :pswitch_5
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onClose(Lcom/flurry/android/ads/FlurryAdInterstitial;)V

    goto :goto_0

    .line 75
    :pswitch_6
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onAppExit(Lcom/flurry/android/ads/FlurryAdInterstitial;)V

    goto :goto_0

    .line 79
    :pswitch_7
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onClicked(Lcom/flurry/android/ads/FlurryAdInterstitial;)V

    goto :goto_0

    .line 83
    :pswitch_8
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    invoke-interface {v0, v1}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onVideoCompleted(Lcom/flurry/android/ads/FlurryAdInterstitial;)V

    goto :goto_0

    .line 87
    :pswitch_9
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->b:Lcom/flurry/android/ads/FlurryAdInterstitialListener;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->c:Lcom/flurry/android/ads/FlurryAdInterstitial$1;

    iget-object v1, v1, Lcom/flurry/android/ads/FlurryAdInterstitial$1;->a:Lcom/flurry/android/ads/FlurryAdInterstitial;

    sget-object v2, Lcom/flurry/android/ads/FlurryAdErrorType;->CLICK:Lcom/flurry/android/ads/FlurryAdErrorType;

    iget-object v3, p0, Lcom/flurry/android/ads/FlurryAdInterstitial$1$1;->a:Lcom/flurry/sdk/d;

    iget-object v3, v3, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/bb;

    .line 3040
    iget v3, v3, Lcom/flurry/sdk/bb;->z:I

    .line 87
    invoke-interface {v0, v1, v2, v3}, Lcom/flurry/android/ads/FlurryAdInterstitialListener;->onError(Lcom/flurry/android/ads/FlurryAdInterstitial;Lcom/flurry/android/ads/FlurryAdErrorType;I)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
