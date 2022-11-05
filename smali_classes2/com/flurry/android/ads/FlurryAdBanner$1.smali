.class final Lcom/flurry/android/ads/FlurryAdBanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/ads/FlurryAdBanner;
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
        "Lcom/flurry/sdk/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/android/ads/FlurryAdBanner;


# direct methods
.method constructor <init>(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdBanner$1;->a:Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 3

    .prologue
    .line 28
    check-cast p1, Lcom/flurry/sdk/d;

    .line 1031
    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdBanner$1;->a:Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-static {v1}, Lcom/flurry/android/ads/FlurryAdBanner;->a(Lcom/flurry/android/ads/FlurryAdBanner;)Lcom/flurry/sdk/q;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1036
    iget-object v0, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner$1;->a:Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-static {v0}, Lcom/flurry/android/ads/FlurryAdBanner;->b(Lcom/flurry/android/ads/FlurryAdBanner;)Lcom/flurry/android/ads/FlurryAdBannerListener;

    move-result-object v0

    .line 1043
    if-eqz v0, :cond_0

    .line 1047
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/ads/FlurryAdBanner$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/flurry/android/ads/FlurryAdBanner$1$1;-><init>(Lcom/flurry/android/ads/FlurryAdBanner$1;Lcom/flurry/sdk/d;Lcom/flurry/android/ads/FlurryAdBannerListener;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 28
    :cond_0
    return-void
.end method
