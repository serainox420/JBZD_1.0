.class Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$3;
.super Ljava/lang/Object;
.source "MoPubNativeAd.java"

# interfaces
.implements Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->createEventListener()Lcom/mopub/nativeads/BaseNativeAd$NativeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$1400(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V

    .line 168
    return-void
.end method

.method public onAdImpressed()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$1300(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)V

    .line 163
    return-void
.end method
