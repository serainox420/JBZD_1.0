.class public final Lcom/mopub/nativeads/MoPubNativeAdPositioning;
.super Ljava/lang/Object;
.source "MoPubNativeAdPositioning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;,
        Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 3

    .prologue
    .line 112
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    new-instance v0, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;-><init>()V

    .line 115
    invoke-static {v0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-static {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->b(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;I)I

    .line 117
    return-object v0
.end method

.method public static clientPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;-><init>()V

    return-object v0
.end method

.method public static serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    invoke-direct {v0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;-><init>()V

    return-object v0
.end method
