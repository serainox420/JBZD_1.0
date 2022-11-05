.class Lcom/mopub/nativeads/MoPubNative$2;
.super Ljava/lang/Object;
.source "MoPubNative.java"

# interfaces
.implements Lcom/mopub/network/AdRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/AdRendererRegistry;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/MoPubNative;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNative;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubNative$2;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$2;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/volley/VolleyError;)V

    .line 99
    return-void
.end method

.method public onSuccess(Lcom/mopub/network/AdResponse;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubNative$2;->a:Lcom/mopub/nativeads/MoPubNative;

    invoke-static {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->a(Lcom/mopub/nativeads/MoPubNative;Lcom/mopub/network/AdResponse;)V

    .line 94
    return-void
.end method
