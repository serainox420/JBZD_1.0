.class Lcom/mopub/nativeads/MoPubNative$3;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/network/AdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/network/AdResponse;

.field final synthetic b:Lcom/mopub/nativeads/MoPubNative;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    iput-object p2, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/network/AdResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 3

    .prologue
    .line 227
    const-string v0, "Native Ad failed to load with error: %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->v(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->a(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 8

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->a()Landroid/content/Context;

    move-result-object v1

    .line 206
    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    iget-object v0, v0, Lcom/mopub/nativeads/MoPubNative;->b:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForAd(Lcom/mopub/nativeads/BaseNativeAd;)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v6

    .line 211
    if-nez v6, :cond_1

    .line 212
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NATIVE_RENDERER_CONFIGURATION_ERROR:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubNative$3;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNative;->b(Lcom/mopub/nativeads/MoPubNative;)Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    move-result-object v7

    new-instance v0, Lcom/mopub/nativeads/NativeAd;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/network/AdResponse;

    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/nativeads/MoPubNative$3;->a:Lcom/mopub/network/AdResponse;

    invoke-virtual {v3}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/nativeads/MoPubNative$3;->b:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v4}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/mopub/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V

    invoke-interface {v7, v0}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;->onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V

    goto :goto_0
.end method
