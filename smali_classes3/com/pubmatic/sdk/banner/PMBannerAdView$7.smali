.class Lcom/pubmatic/sdk/banner/PMBannerAdView$7;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;->renderAdDescriptor(Lcom/pubmatic/sdk/common/AdResponse$Renderable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

.field final synthetic val$adDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;)V
    .locals 0

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$7;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$7;->val$adDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$7;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$7;->val$adDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$900(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;)V

    .line 1436
    return-void
.end method
