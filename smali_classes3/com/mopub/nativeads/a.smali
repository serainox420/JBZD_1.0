.class Lcom/mopub/nativeads/a;
.super Ljava/lang/Object;
.source "ClientPositioningSource.java"

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/a;->a:Landroid/os/Handler;

    .line 16
    invoke-static {p1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/a;->b:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .line 17
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/a;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/mopub/nativeads/a;->b:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    return-object v0
.end method


# virtual methods
.method public loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/nativeads/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/nativeads/a$1;

    invoke-direct {v1, p0, p2}, Lcom/mopub/nativeads/a$1;-><init>(Lcom/mopub/nativeads/a;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method
