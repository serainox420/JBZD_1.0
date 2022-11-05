.class Lcom/mopub/mobileads/m;
.super Lcom/mopub/mobileads/BaseWebView;
.source "VastWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/m$b;,
        Lcom/mopub/mobileads/m$a;
    }
.end annotation


# instance fields
.field b:Lcom/mopub/mobileads/m$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/mopub/mobileads/m;->b()V

    .line 33
    invoke-virtual {p0}, Lcom/mopub/mobileads/m;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 35
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/VersionCode;->ICE_CREAM_SANDWICH:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/VersionCode;->isAtLeast(Lcom/mopub/common/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/m;->b(Z)V

    .line 39
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/m;->setBackgroundColor(I)V

    .line 40
    new-instance v0, Lcom/mopub/mobileads/m$b;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/m$b;-><init>(Lcom/mopub/mobileads/m;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/m;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/m;->setId(I)V

    .line 42
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/mopub/mobileads/l;)Lcom/mopub/mobileads/m;
    .locals 1

    .prologue
    .line 72
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/mopub/mobileads/m;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/m;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/l;->initializeWebView(Lcom/mopub/mobileads/m;)V

    .line 78
    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/m;->setHorizontalScrollBarEnabled(Z)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/m;->setHorizontalScrollbarOverlay(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/m;->setVerticalScrollBarEnabled(Z)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/m;->setVerticalScrollbarOverlay(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/mopub/mobileads/m;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/m;->setScrollBarStyle(I)V

    .line 60
    return-void
.end method


# virtual methods
.method a(Lcom/mopub/mobileads/m$a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mopub/mobileads/m;->b:Lcom/mopub/mobileads/m$a;

    .line 51
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getBaseUrlScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ads.mopub.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/m;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
