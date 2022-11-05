.class Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/ViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ViewManager;


# direct methods
.method private constructor <init>(Lcom/amazon/device/ads/ViewManager;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;->this$0:Lcom/amazon/device/ads/ViewManager;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/ViewManager;Lcom/amazon/device/ads/ViewManager$1;)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;-><init>(Lcom/amazon/device/ads/ViewManager;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 487
    iget-object v0, p0, Lcom/amazon/device/ads/ViewManager$AdWebChromeClient;->this$0:Lcom/amazon/device/ads/ViewManager;

    invoke-static {v0}, Lcom/amazon/device/ads/ViewManager;->access$100(Lcom/amazon/device/ads/ViewManager;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "JS Console Message Line number %d : %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    return v5
.end method
