.class public Lcom/openx/common/deviceData/managers/AdTruthImpl;
.super Lcom/openx/core/sdk/OXMBaseManager;
.source "AdTruthImpl.java"

# interfaces
.implements Lcom/openx/common/deviceData/listeners/AdTruthListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/common/deviceData/managers/AdTruthImpl$JSBridge;
    }
.end annotation


# static fields
.field private static AD_TRUTH_JS_URL:Ljava/lang/String;

.field private static HTML_TEMPLATE:Ljava/lang/String;


# instance fields
.field private mDomain:Ljava/lang/String;

.field private mJSBridge:Lcom/openx/common/deviceData/managers/AdTruthImpl$JSBridge;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "<html><head><script type=\'text/javascript\' src=\'%s\'></script></head><body></body></html>"

    sput-object v0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->HTML_TEMPLATE:Ljava/lang/String;

    .line 24
    const-string v0, "/w/1.0/tpat"

    sput-object v0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->AD_TRUTH_JS_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMBaseManager;-><init>()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/openx/common/deviceData/managers/AdTruthImpl;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/openx/core/sdk/OXMBaseManager;->init(Landroid/content/Context;)V

    .line 114
    invoke-super {p0}, Lcom/openx/core/sdk/OXMBaseManager;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->mWebView:Landroid/webkit/WebView;

    .line 117
    new-instance v0, Lcom/openx/common/deviceData/managers/AdTruthImpl$JSBridge;

    invoke-direct {v0, p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl$JSBridge;-><init>(Lcom/openx/common/deviceData/managers/AdTruthImpl;)V

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->mJSBridge:Lcom/openx/common/deviceData/managers/AdTruthImpl$JSBridge;

    .line 119
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/openx/common/deviceData/managers/AdTruthImpl$1;

    invoke-direct {v1, p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl$1;-><init>(Lcom/openx/common/deviceData/managers/AdTruthImpl;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 132
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->mJSBridge:Lcom/openx/common/deviceData/managers/AdTruthImpl$JSBridge;

    const-string v2, "jsBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public readAdTruth()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/openx/core/sdk/OXMManagersResolver;->getInstance()Lcom/openx/core/sdk/OXMManagersResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/core/sdk/OXMManagersResolver;->getPreferencesManager()Lcom/openx/common/deviceData/listeners/PreferenceListener;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/openx/common/deviceData/listeners/PreferenceListener;->loadAdTruthValue()Lcom/openx/common/deviceData/managers/OXMPreference;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/openx/common/deviceData/managers/OXMPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/openx/common/deviceData/managers/OXMPreference;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->updateAdTruth()V

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/openx/common/deviceData/managers/OXMPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->mDomain:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public updateAdTruth()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-static {}, Lcom/openx/common/utils/helpers/Utils;->avoidJSC_MOB273()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x0

    .line 66
    const-string v2, "adtruth.html"

    .line 67
    sget-object v0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->HTML_TEMPLATE:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/openx/common/deviceData/managers/AdTruthImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/openx/common/deviceData/managers/AdTruthImpl;->AD_TRUTH_JS_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 77
    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :goto_1
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-direct {p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearView()V

    .line 99
    invoke-direct {p0}, Lcom/openx/common/deviceData/managers/AdTruthImpl;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    .line 82
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 90
    :catch_2
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 88
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 93
    :goto_2
    throw v0

    .line 90
    :catch_3
    move-exception v1

    .line 92
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/openx/common/utils/helpers/Utils;->log(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method
