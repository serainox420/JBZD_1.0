.class Lcom/apprupt/sdk/CvWebView;
.super Landroid/webkit/WebView;
.source "CvWebView.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/apprupt/sdk/CvWebView;->a()V

    .line 22
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvAppInfo;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 50
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 51
    return-void
.end method
