.class Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$2;
.super Ljava/lang/Object;
.source "MoPubNativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->attachToLayout(Landroid/view/ViewGroup;)V
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
    .line 141
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 144
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$1200(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd$2;->this$0:Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;->access$700(Lcom/intentsoftware/addapptr/nativeads/MoPubNativeAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    return-void
.end method
