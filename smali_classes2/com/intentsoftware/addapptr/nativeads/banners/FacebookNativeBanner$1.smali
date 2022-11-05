.class Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;
.super Ljava/lang/Object;
.source "FacebookNativeBanner.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->createAdListener()Lcom/facebook/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$1000(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)V

    .line 77
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$100(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v0

    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner320x53:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$300(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/intentsoftware/addapptr/R$layout;->native_banner_320x53:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$202(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;Landroid/view/View;)Landroid/view/View;

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$200(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/intentsoftware/addapptr/R$id;->iconView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$700(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/intentsoftware/addapptr/c/m;->loadBitmapForView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$200(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/intentsoftware/addapptr/R$id;->titleView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$700(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$200(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/intentsoftware/addapptr/R$id;->adDescriptionView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$700(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$200(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/intentsoftware/addapptr/R$id;->CTA_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$700(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v1, Lcom/facebook/ads/AdChoicesView;

    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$800(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v2}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$700(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/facebook/ads/NativeAd;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V

    .line 67
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$200(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/intentsoftware/addapptr/R$id;->nativeBannerUpperRightCorner:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$700(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/facebook/ads/NativeAd;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$200(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$900(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)V

    .line 72
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$100(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v0

    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner468x60:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$400(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/intentsoftware/addapptr/R$layout;->native_banner_468x60:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$202(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$100(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v0

    sget-object v1, Lcom/intentsoftware/addapptr/BannerSize;->Banner768x90:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne v0, v1, :cond_2

    .line 50
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$500(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/intentsoftware/addapptr/R$layout;->native_banner_768x90:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$202(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$600(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/intentsoftware/addapptr/R$layout;->native_banner_300x250:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$202(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;->access$000(Lcom/intentsoftware/addapptr/nativeads/banners/FacebookNativeBanner;Ljava/lang/String;)V

    .line 41
    return-void
.end method
