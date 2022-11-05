.class public Lcom/mopub/mobileads/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# static fields
.field private static b:Z


# instance fields
.field protected a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/BaseWebView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseWebView;->b(Z)V

    .line 32
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseWebView;->b()V

    .line 33
    invoke-static {p0}, Lcom/mopub/mobileads/util/WebViews;->setDisableJSChromeClient(Landroid/webkit/WebView;)V

    .line 35
    sget-boolean v0, Lcom/mopub/mobileads/BaseWebView;->b:Z

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/BaseWebView;->a(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mopub/mobileads/BaseWebView;->b:Z

    .line 39
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    .line 112
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 117
    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 119
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 120
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 122
    const/16 v1, 0x7d5

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 123
    const v1, 0x1000018

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 126
    const/4 v1, -0x2

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 127
    const v1, 0x800033

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 128
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 131
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 92
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected b(Z)V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/VersionCode;->JELLY_BEAN_MR2:Lcom/mopub/common/util/VersionCode;

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/VersionCode;->isAtLeast(Lcom/mopub/common/util/VersionCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseWebView;->a:Z

    .line 47
    invoke-static {p0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseWebView;->removeAllViews()V

    .line 52
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 53
    return-void
.end method

.method setIsDestroyed(Z)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/mopub/mobileads/BaseWebView;->a:Z

    .line 139
    return-void
.end method
