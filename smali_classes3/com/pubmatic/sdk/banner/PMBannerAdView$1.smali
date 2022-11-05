.class Lcom/pubmatic/sdk/banner/PMBannerAdView$1;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/banner/PMBannerAdView;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 955
    instance-of v0, p2, Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/PMBannerAdView$1;->this$0:Lcom/pubmatic/sdk/banner/PMBannerAdView;

    check-cast p2, Landroid/location/Location;

    invoke-static {v0, p2}, Lcom/pubmatic/sdk/banner/PMBannerAdView;->access$302(Lcom/pubmatic/sdk/banner/PMBannerAdView;Landroid/location/Location;)Landroid/location/Location;

    .line 958
    :cond_0
    return-void
.end method
