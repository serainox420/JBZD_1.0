.class Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;
.super Ljava/lang/Object;
.source "RevMobBanner.java"

# interfaces
.implements Lcom/intentsoftware/addapptr/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/RevMobBanner;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/RevMobBanner;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adIdParts:[Ljava/lang/String;

.field final synthetic val$size:Lcom/intentsoftware/addapptr/BannerSize;

.field final synthetic val$targetingInformation:Lcom/intentsoftware/addapptr/c/k;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/RevMobBanner;Landroid/app/Activity;[Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/RevMobBanner;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->val$adIdParts:[Ljava/lang/String;

    iput-object p4, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->val$size:Lcom/intentsoftware/addapptr/BannerSize;

    iput-object p5, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->val$targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/RevMobBanner;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->access$100(Lcom/intentsoftware/addapptr/banners/RevMobBanner;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onInitialized()V
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/RevMobBanner;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->val$adIdParts:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->val$size:Lcom/intentsoftware/addapptr/BannerSize;

    iget-object v4, p0, Lcom/intentsoftware/addapptr/banners/RevMobBanner$1;->val$targetingInformation:Lcom/intentsoftware/addapptr/c/k;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/intentsoftware/addapptr/banners/RevMobBanner;->access$000(Lcom/intentsoftware/addapptr/banners/RevMobBanner;Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 44
    return-void
.end method
