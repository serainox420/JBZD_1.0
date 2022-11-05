.class public Lcom/pierfrancescosoffritti/youtubeplayer/e;
.super Landroid/webkit/WebView;
.source "YouTubePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pierfrancescosoffritti/youtubeplayer/e$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/pierfrancescosoffritti/youtubeplayer/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b:Landroid/os/Handler;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->a:Ljava/util/Set;

    .line 47
    return-void
.end method

.method private getVideoPlayerHTML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 81
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v0, ""

    :goto_1
    return-object v0

    .line 89
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/e$4;

    invoke-direct {v1, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/e$4;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method protected a(I)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/e$6;

    invoke-direct {v1, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/e$6;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method protected a(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 57
    new-instance v0, Lcom/pierfrancescosoffritti/youtubeplayer/f;

    invoke-direct {v0, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/f;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;)V

    const-string v1, "YouTubePlayerBridge"

    invoke-virtual {p0, v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-string v1, "https://www.youtube.com"

    invoke-direct {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->getVideoPlayerHTML()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/pierfrancescosoffritti/youtubeplayer/e$1;

    invoke-direct {v0, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/e$1;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;)V

    invoke-virtual {p0, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 74
    return-void
.end method

.method protected a(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/e$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$2;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/e$5;

    invoke-direct {v1, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/e$5;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method protected b(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/e$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$3;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method

.method protected b(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;)Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/pierfrancescosoffritti/youtubeplayer/e$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e;->a:Ljava/util/Set;

    return-object v0
.end method
