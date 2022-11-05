.class Lcom/intentsoftware/addapptr/banners/OpenXBanner$1;
.super Ljava/lang/Object;
.source "OpenXBanner.java"

# interfaces
.implements Lcom/openx/view/AdEventsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/OpenXBanner;->createListener()Lcom/openx/view/AdEventsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/OpenXBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/OpenXBanner;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/OpenXBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/OpenXBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->access$200(Lcom/intentsoftware/addapptr/banners/OpenXBanner;)V

    .line 91
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onAdDidLoad()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/OpenXBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->access$100(Lcom/intentsoftware/addapptr/banners/OpenXBanner;)V

    .line 82
    return-void
.end method

.method public onAdFailedToLoad(Lcom/openx/errors/AdError;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/OpenXBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/OpenXBanner;

    invoke-virtual {p1}, Lcom/openx/errors/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/OpenXBanner;->access$000(Lcom/intentsoftware/addapptr/banners/OpenXBanner;Ljava/lang/String;)V

    .line 77
    return-void
.end method
