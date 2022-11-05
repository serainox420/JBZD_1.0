.class Lcom/intentsoftware/addapptr/banners/AppLovinBanner$1;
.super Ljava/lang/Object;
.source "AppLovinBanner.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/AppLovinBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AppLovinBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppLovinBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AppLovinBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AppLovinBanner;->access$000(Lcom/intentsoftware/addapptr/banners/AppLovinBanner;)V

    .line 43
    return-void
.end method
