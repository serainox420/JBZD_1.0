.class Lcom/pubmatic/sdk/banner/PMBannerAdView$8$1;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView$8;->imageReceived(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$8;

.field final synthetic val$finalImaegObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView$8;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$8;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8$1;->val$finalImaegObject:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$8;

    iget-object v0, v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8$1;->this$1:Lcom/pubmatic/sdk/banner/PMBannerAdView$8;

    iget-object v1, v1, Lcom/pubmatic/sdk/banner/PMBannerAdView$8;->val$adDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$8$1;->val$finalImaegObject:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$1000(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/Object;)V

    .line 1583
    return-void
.end method
