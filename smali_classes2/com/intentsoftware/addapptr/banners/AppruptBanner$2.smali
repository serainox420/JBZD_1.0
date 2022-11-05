.class Lcom/intentsoftware/addapptr/banners/AppruptBanner$2;
.super Ljava/lang/Object;
.source "AppruptBanner.java"

# interfaces
.implements Lcom/apprupt/sdk/AdView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/AppruptBanner;->createListener()Lcom/apprupt/sdk/AdView$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/AppruptBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/AppruptBanner;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/AppruptBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/apprupt/sdk/AdView;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/AppruptBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->access$200(Lcom/intentsoftware/addapptr/banners/AppruptBanner;)V

    .line 90
    return-void
.end method

.method public onAdLoadingFailure(Ljava/lang/String;Lcom/apprupt/sdk/AdView;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AppruptBanner$2;->this$0:Lcom/intentsoftware/addapptr/banners/AppruptBanner;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/banners/AppruptBanner;->access$100(Lcom/intentsoftware/addapptr/banners/AppruptBanner;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onFirstTap(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
