.class public Lcom/smaato/soma/internal/connector/a;
.super Ljava/lang/Object;
.source "OrmmaConnector.java"


# instance fields
.field private a:Lcom/smaato/soma/j;

.field private b:Landroid/webkit/WebView;

.field private c:F

.field private d:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/OrmmaConnectorInstantiationFailed;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/smaato/soma/internal/connector/a;->a:Lcom/smaato/soma/j;

    .line 39
    iput-object v0, p0, Lcom/smaato/soma/internal/connector/a;->b:Landroid/webkit/WebView;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/smaato/soma/internal/connector/a;->c:F

    .line 55
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/smaato/soma/internal/connector/a;->d:Landroid/view/WindowManager;

    .line 57
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/a;->d:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/smaato/soma/internal/connector/a;->c:F
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    throw v0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    new-instance v1, Lcom/smaato/soma/exception/OrmmaConnectorInstantiationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/OrmmaConnectorInstantiationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToGetScreenSize;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/connector/a$4;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/connector/a$4;-><init>(Lcom/smaato/soma/internal/connector/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 199
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->d:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 207
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    throw v0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    new-instance v1, Lcom/smaato/soma/exception/UnableToGetScreenSize;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToGetScreenSize;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToInjectJavaScript;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/connector/a$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/connector/a$1;-><init>(Lcom/smaato/soma/internal/connector/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "OrmmaConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Injecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 113
    iget-object v0, p0, Lcom/smaato/soma/internal/connector/a;->b:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    throw v0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    new-instance v1, Lcom/smaato/soma/exception/UnableToInjectJavaScript;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToInjectJavaScript;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToNotifyBannerLoaded;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/connector/a$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/connector/a$3;-><init>(Lcom/smaato/soma/internal/connector/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.ormmaview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->b:Landroid/webkit/WebView;

    .line 152
    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smaato/soma/internal/connector/a;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->b:Landroid/webkit/WebView;

    .line 156
    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smaato/soma/internal/connector/a;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, maxSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    invoke-direct {p0}, Lcom/smaato/soma/internal/connector/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-direct {p0}, Lcom/smaato/soma/internal/connector/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultPosition: { x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->a:Lcom/smaato/soma/j;

    .line 168
    invoke-virtual {v1}, Lcom/smaato/soma/j;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smaato/soma/internal/connector/a;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->a:Lcom/smaato/soma/j;

    .line 170
    invoke-virtual {v1}, Lcom/smaato/soma/j;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smaato/soma/internal/connector/a;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->a:Lcom/smaato/soma/j;

    .line 172
    invoke-virtual {v1}, Lcom/smaato/soma/j;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smaato/soma/internal/connector/a;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->a:Lcom/smaato/soma/j;

    .line 175
    invoke-virtual {v1}, Lcom/smaato/soma/j;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smaato/soma/internal/connector/a;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " },supports: [ \'level-1\', \'screen\',\'sms\',\'phone\',\'email\',\'calendar\',\'tel\',\'inlineVideo\',\'storePicture\'] });"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->a:Lcom/smaato/soma/j;

    instance-of v1, v1, Lcom/smaato/soma/interstitial/b;

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "window.ormma.setPlacementType(\'interstitial\');"

    invoke-direct {p0, v1}, Lcom/smaato/soma/internal/connector/a;->b(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/connector/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    throw v0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    new-instance v1, Lcom/smaato/soma/exception/UnableToNotifyBannerLoaded;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToNotifyBannerLoaded;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/a;->b:Landroid/webkit/WebView;

    .line 98
    return-void
.end method

.method public a(Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/smaato/soma/internal/connector/a;->a:Lcom/smaato/soma/j;

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/NotifyingSizeChangedFailed;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    new-instance v0, Lcom/smaato/soma/internal/connector/a$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/internal/connector/a$2;-><init>(Lcom/smaato/soma/internal/connector/a;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.ormmaview.fireChangeEvent({state: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', size:{ width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->b:Landroid/webkit/WebView;

    .line 132
    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smaato/soma/internal/connector/a;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/internal/connector/a;->b:Landroid/webkit/WebView;

    .line 134
    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/smaato/soma/internal/connector/a;->c:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-direct {p0, v0}, Lcom/smaato/soma/internal/connector/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    throw v0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    new-instance v1, Lcom/smaato/soma/exception/NotifyingSizeChangedFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/NotifyingSizeChangedFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
