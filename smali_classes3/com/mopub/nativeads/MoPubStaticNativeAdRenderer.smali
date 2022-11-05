.class public Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;
.super Ljava/lang/Object;
.source "MoPubStaticNativeAdRenderer.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubAdRenderer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mopub/nativeads/MoPubAdRenderer",
        "<",
        "Lcom/mopub/nativeads/StaticNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/WeakHashMap;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/mopub/nativeads/ViewBinder;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/ViewBinder;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->a:Ljava/util/WeakHashMap;

    .line 35
    return-void
.end method

.method private a(Lcom/mopub/nativeads/j;I)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p1, Lcom/mopub/nativeads/j;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p1, Lcom/mopub/nativeads/j;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    return-void
.end method

.method private a(Lcom/mopub/nativeads/j;Lcom/mopub/nativeads/StaticNativeAd;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p1, Lcom/mopub/nativeads/j;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 71
    iget-object v0, p1, Lcom/mopub/nativeads/j;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 72
    iget-object v0, p1, Lcom/mopub/nativeads/j;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeRendererHelper;->addTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/mopub/nativeads/j;->e:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 76
    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/mopub/nativeads/j;->f:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeImageHelper;->loadImageView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 78
    iget-object v0, p1, Lcom/mopub/nativeads/j;->g:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getPrivacyInformationIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/NativeRendererHelper;->addPrivacyInformationIcon(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public createAdView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    iget v1, v1, Lcom/mopub/nativeads/ViewBinder;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic renderAdView(Landroid/view/View;Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 0

    .prologue
    .line 20
    check-cast p2, Lcom/mopub/nativeads/StaticNativeAd;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->renderAdView(Landroid/view/View;Lcom/mopub/nativeads/StaticNativeAd;)V

    return-void
.end method

.method public renderAdView(Landroid/view/View;Lcom/mopub/nativeads/StaticNativeAd;)V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/j;

    .line 49
    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    invoke-static {p1, v0}, Lcom/mopub/nativeads/j;->a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/j;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->a(Lcom/mopub/nativeads/j;Lcom/mopub/nativeads/StaticNativeAd;)V

    .line 55
    iget-object v1, v0, Lcom/mopub/nativeads/j;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->b:Lcom/mopub/nativeads/ViewBinder;

    iget-object v2, v2, Lcom/mopub/nativeads/ViewBinder;->h:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mopub/nativeads/StaticNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mopub/nativeads/NativeRendererHelper;->updateExtras(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    .line 58
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;->a(Lcom/mopub/nativeads/j;I)V

    .line 59
    return-void
.end method

.method public supports(Lcom/mopub/nativeads/BaseNativeAd;)Z
    .locals 1

    .prologue
    .line 63
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    instance-of v0, p1, Lcom/mopub/nativeads/StaticNativeAd;

    return v0
.end method
