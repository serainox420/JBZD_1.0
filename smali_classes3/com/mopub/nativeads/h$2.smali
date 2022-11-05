.class Lcom/mopub/nativeads/h$2;
.super Ljava/lang/Object;
.source "ServerPositioningSource.java"

# interfaces
.implements Lcom/mopub/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/volley/Response$Listener",
        "<",
        "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/h;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/h;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mopub/nativeads/h$2;->a:Lcom/mopub/nativeads/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mopub/nativeads/h$2;->a:Lcom/mopub/nativeads/h;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/h;->a(Lcom/mopub/nativeads/h;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 85
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/h$2;->onResponse(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    return-void
.end method
