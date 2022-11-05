.class Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 2313
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/PMBannerAdView$1;)V
    .locals 0

    .prologue
    .line 2313
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;-><init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/ui/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1800(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/ui/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/ui/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1900(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Landroid/widget/TextView;

    move-result-object v0

    .line 2317
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 2318
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2319
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$OnClickHandler;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$2000(Lcom/pubmatic/sdk/banner/PMBannerAdView;)Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->getURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1600(Lcom/pubmatic/sdk/banner/PMBannerAdView;Ljava/lang/String;Z)V

    .line 2322
    :cond_2
    return-void
.end method
