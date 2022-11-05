.class Lcom/pubmatic/sdk/banner/PMBannerAdView$5;
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

.field final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$5;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iput-object p2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$5;->val$adDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    iput-object p3, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$5;->val$txt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$5;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$5;->val$adDescriptor:Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$5;->val$txt:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$800(Lcom/pubmatic/sdk/banner/PMBannerAdView;Lcom/pubmatic/sdk/banner/BannerAdDescriptor;Ljava/lang/String;)V

    .line 1371
    return-void
.end method
