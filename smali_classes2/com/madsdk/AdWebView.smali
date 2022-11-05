.class public Lcom/madsdk/AdWebView;
.super Landroid/webkit/WebView;
.source "AdWebView.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final MAX_CLICK_DURATION:I = 0xc8

.field private static final MIME_TYPE:Ljava/lang/String; = "text/html"


# instance fields
.field private startClickTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/madsdk/javascript/MraidEventsListener;Landroid/webkit/WebViewClient;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p2, p3}, Lcom/madsdk/AdWebView;->init(Lcom/madsdk/javascript/MraidEventsListener;Landroid/webkit/WebViewClient;)V

    .line 31
    return-void
.end method

.method private getMraidJs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/madsdk/AdWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    sget v1, Lcom/madsdk/R$raw;->madsdkmraid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 67
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    const-string v0, ""

    goto :goto_0
.end method

.method private init(Lcom/madsdk/javascript/MraidEventsListener;Landroid/webkit/WebViewClient;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/madsdk/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    new-instance v0, Lcom/madsdk/javascript/JavascriptInterface;

    invoke-direct {v0}, Lcom/madsdk/javascript/JavascriptInterface;-><init>()V

    .line 37
    invoke-virtual {v0, p1}, Lcom/madsdk/javascript/JavascriptInterface;->setMraidEventsListener(Lcom/madsdk/javascript/MraidEventsListener;)V

    .line 38
    const-string v1, "jsInterface"

    invoke-virtual {p0, v0, v1}, Lcom/madsdk/AdWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/madsdk/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    return-void
.end method

.method private injectMraidJs(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    const-string v1, "</head>"

    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 53
    array-length v0, v2

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/madsdk/AdWebView;->getMraidJs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-object p1
.end method


# virtual methods
.method public loadAd(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/madsdk/AdWebView;->injectMraidJs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lcom/madsdk/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 46
    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 47
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/madsdk/AdWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 82
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/madsdk/AdWebView;->startClickTime:J

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/madsdk/AdWebView;->startClickTime:J

    sub-long/2addr v0, v2

    .line 87
    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 88
    invoke-super {p0}, Landroid/webkit/WebView;->performClick()Z

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
