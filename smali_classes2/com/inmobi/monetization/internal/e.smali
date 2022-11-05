.class Lcom/inmobi/monetization/internal/e;
.super Landroid/view/View;
.source "TrackerView.java"


# instance fields
.field a:Landroid/webkit/WebViewClient;

.field private b:Lcom/inmobi/re/container/IMWebView;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v2, p0, Lcom/inmobi/monetization/internal/e;->c:Z

    .line 28
    iput-object v3, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    .line 29
    iput-boolean v2, p0, Lcom/inmobi/monetization/internal/e;->f:Z

    .line 142
    new-instance v0, Lcom/inmobi/monetization/internal/e$1;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/e$1;-><init>(Lcom/inmobi/monetization/internal/e;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/e;->a:Landroid/webkit/WebViewClient;

    .line 32
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iput-object p3, p0, Lcom/inmobi/monetization/internal/e;->d:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/inmobi/monetization/internal/e;->setBackgroundColor(I)V

    .line 41
    const-class v0, Lcom/inmobi/monetization/internal/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->setIMAIController(Ljava/lang/Class;)V

    .line 42
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p1, v3, v2, v2}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    .line 43
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 45
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/e;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p2, v1, v2}, Lcom/inmobi/re/container/IMWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    .line 48
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/e;->setId(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/e;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/inmobi/monetization/internal/e;->f:Z

    return p1
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/monetization/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordEvent(18)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inmobi/monetization/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recordEvent(8)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 90
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inmobi/monetization/internal/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recordEvent(8, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/re/container/IMWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 140
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->destroy()V

    .line 55
    iput-object v2, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iput-object v2, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    .line 61
    :cond_1
    iput-boolean v1, p0, Lcom/inmobi/monetization/internal/e;->c:Z

    .line 62
    iput-boolean v1, p0, Lcom/inmobi/monetization/internal/e;->f:Z

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Handle Impression"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/inmobi/monetization/internal/e;->b(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Handle Click"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/inmobi/monetization/internal/e;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-boolean v1, p0, Lcom/inmobi/monetization/internal/e;->f:Z

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/e;->b(Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 114
    if-eqz p1, :cond_1

    .line 115
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 116
    const-string v0, "[InMobi]-[Monetization]"

    invoke-static {v0, p1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->b:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:try{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}catch(e){}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    .line 122
    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/e;->c(Ljava/lang/String;)V

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/e;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 67
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/e;->c:Z

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/e;->c:Z

    .line 69
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/e;->f:Z

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/e;->a(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/inmobi/monetization/internal/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
