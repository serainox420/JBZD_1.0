.class final Lcom/apprupt/sdk/MRAIDView;
.super Landroid/webkit/WebView;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/MRAIDView$JSInterface;,
        Lcom/apprupt/sdk/MRAIDView$MraidState;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Lcom/apprupt/sdk/Logger$log;

.field private final c:Lcom/apprupt/sdk/Logger$log;

.field private final d:Lcom/apprupt/sdk/CvAdWrapper;

.field private final e:Z

.field private f:Lcom/apprupt/sdk/mediation/Size;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Lcom/apprupt/sdk/MRAIDView$MraidState;

.field private final j:Z

.field private k:Ljava/util/Timer;

.field private l:Z

.field private final m:[I

.field private final n:[I

.field private final o:[I

.field private p:Z

.field private final q:[I

.field private r:Z

.field private s:Z

.field private final t:Lcom/apprupt/sdk/adview/ResizeProperties;

.field private final u:Lcom/apprupt/sdk/adview/ExpandProperties;

.field private final v:Lcom/apprupt/sdk/adview/OrientationProperties;

.field private volatile w:Z

.field private volatile x:Lcom/apprupt/sdk/Vibrator$API;

.field private y:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/apprupt/sdk/CvAdWrapper;ZLjava/lang/Runnable;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Lcom/apprupt/sdk/CvContext;

    invoke-direct {v0, p1}, Lcom/apprupt/sdk/CvContext;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v0, "MRAID"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    .line 42
    const-string v0, "Lifecycle.MRAID"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->c:Lcom/apprupt/sdk/Logger$log;

    .line 45
    iput-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->f:Lcom/apprupt/sdk/mediation/Size;

    .line 48
    sget-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->a:Lcom/apprupt/sdk/MRAIDView$MraidState;

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->i:Lcom/apprupt/sdk/MRAIDView$MraidState;

    .line 50
    iput-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->k:Ljava/util/Timer;

    .line 51
    iput-boolean v4, p0, Lcom/apprupt/sdk/MRAIDView;->l:Z

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->m:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->o:[I

    .line 55
    iput-boolean v4, p0, Lcom/apprupt/sdk/MRAIDView;->p:Z

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->q:[I

    .line 57
    iput-boolean v4, p0, Lcom/apprupt/sdk/MRAIDView;->r:Z

    .line 58
    iput-boolean v4, p0, Lcom/apprupt/sdk/MRAIDView;->s:Z

    .line 59
    new-instance v0, Lcom/apprupt/sdk/adview/ResizeProperties;

    invoke-direct {v0}, Lcom/apprupt/sdk/adview/ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->t:Lcom/apprupt/sdk/adview/ResizeProperties;

    .line 60
    new-instance v0, Lcom/apprupt/sdk/adview/ExpandProperties;

    invoke-direct {v0}, Lcom/apprupt/sdk/adview/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->u:Lcom/apprupt/sdk/adview/ExpandProperties;

    .line 61
    new-instance v0, Lcom/apprupt/sdk/adview/OrientationProperties;

    invoke-direct {v0}, Lcom/apprupt/sdk/adview/OrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->v:Lcom/apprupt/sdk/adview/OrientationProperties;

    .line 62
    iput-boolean v4, p0, Lcom/apprupt/sdk/MRAIDView;->w:Z

    .line 63
    iput-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->x:Lcom/apprupt/sdk/Vibrator$API;

    .line 64
    iput-boolean v4, p0, Lcom/apprupt/sdk/MRAIDView;->a:Z

    .line 573
    iput-boolean v4, p0, Lcom/apprupt/sdk/MRAIDView;->y:Z

    .line 71
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Initializing mraid view..."

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 75
    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView;->d:Lcom/apprupt/sdk/CvAdWrapper;

    .line 76
    iput-boolean p3, p0, Lcom/apprupt/sdk/MRAIDView;->e:Z

    .line 77
    invoke-virtual {p2}, Lcom/apprupt/sdk/CvAdWrapper;->n()Lcom/apprupt/sdk/mediation/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->f:Lcom/apprupt/sdk/mediation/Size;

    .line 78
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->o:[I

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView;->f:Lcom/apprupt/sdk/mediation/Size;

    iget v1, v1, Lcom/apprupt/sdk/mediation/Size;->b:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v1

    aput v1, v0, v4

    .line 79
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->o:[I

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView;->f:Lcom/apprupt/sdk/mediation/Size;

    iget v1, v1, Lcom/apprupt/sdk/mediation/Size;->c:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v1

    aput v1, v0, v3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__mb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/apprupt/sdk/CvRandomString;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->g:Ljava/lang/String;

    .line 81
    if-eqz p3, :cond_2

    const-string v0, "interstitial"

    :goto_0
    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->h:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/apprupt/sdk/CvViewHelper;->b(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->m:[I

    sget-object v1, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    aput v1, v0, v4

    .line 87
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->m:[I

    sget-object v1, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, v0, v3

    .line 89
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->setMinimumHeight(I)V

    .line 93
    invoke-virtual {p0, v4}, Lcom/apprupt/sdk/MRAIDView;->setBackgroundColor(I)V

    .line 94
    invoke-virtual {p0, v4}, Lcom/apprupt/sdk/MRAIDView;->setHorizontalScrollBarEnabled(Z)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/apprupt/sdk/MRAIDView;->setVerticalScrollBarEnabled(Z)V

    .line 96
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->setScrollBarStyle(I)V

    .line 99
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 102
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apprupt/sdk/CvAppInfo;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 104
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 106
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 107
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 110
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v5, :cond_3

    .line 111
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$JSInterface;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$JSInterface;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    const-string v1, "%s__bridge"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/apprupt/sdk/MRAIDView;->g:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/apprupt/sdk/MRAIDView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-boolean v4, p0, Lcom/apprupt/sdk/MRAIDView;->j:Z

    .line 117
    :goto_1
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$1;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$2;

    invoke-direct {v0, p0, p4, p2}, Lcom/apprupt/sdk/MRAIDView$2;-><init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/Runnable;Lcom/apprupt/sdk/CvAdWrapper;)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 223
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$3;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$3;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 261
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/apprupt/sdk/MRAIDView$4;

    invoke-direct {v1, p0}, Lcom/apprupt/sdk/MRAIDView$4;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void

    .line 81
    :cond_2
    const-string v0, "inline"

    goto/16 :goto_0

    .line 114
    :cond_3
    iput-boolean v3, p0, Lcom/apprupt/sdk/MRAIDView;->j:Z

    goto :goto_1

    .line 52
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 53
    :array_1
    .array-data 4
        -0x270f
        -0x270f
    .end array-data

    .line 54
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 56
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/apprupt/sdk/MRAIDView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 821
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "jsRequest"

    aput-object v2, v1, v6

    aput-object p1, v1, v7

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 822
    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 824
    :try_start_0
    const-string v0, "value"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 825
    new-instance v0, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v0, p2}, Lcom/apprupt/sdk/SimpleJSON;-><init>(Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "MRAID"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 827
    const-string v2, "getProperty"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/apprupt/sdk/SimpleJSON;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 830
    if-eqz v0, :cond_0

    .line 831
    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "jsRequest result"

    aput-object v3, v2, v6

    invoke-virtual {v1}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 881
    invoke-virtual {v1}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 833
    :cond_1
    :try_start_1
    const-string v2, "expand"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 834
    const-string v2, "url"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 877
    :catch_0
    move-exception v0

    .line 878
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "Error jsRequest"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 835
    :cond_2
    :try_start_2
    const-string v2, "resize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 836
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->m()V

    goto :goto_0

    .line 837
    :cond_3
    const-string v2, "close"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 838
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->n()V

    goto :goto_0

    .line 839
    :cond_4
    const-string v2, "kill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 840
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "KILL!!!"

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 841
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->p()V

    goto :goto_0

    .line 842
    :cond_5
    const-string v2, "open"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 843
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 844
    :cond_6
    const-string v2, "storePicture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 845
    const-string v0, "Cannot store picture"

    const-string v2, "storePicture"

    invoke-direct {p0, v0, v2}, Lcom/apprupt/sdk/MRAIDView;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :cond_7
    const-string v2, "supports"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 847
    const-string v2, "value"

    const-string v3, "feature"

    invoke-virtual {v0, v3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    goto/16 :goto_0

    .line 848
    :cond_8
    const-string v2, "setOrientationProperties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 849
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->v:Lcom/apprupt/sdk/adview/OrientationProperties;

    const-string v3, "properties"

    invoke-virtual {v0, v3}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apprupt/sdk/adview/OrientationProperties;->a(Lcom/apprupt/sdk/SimpleJSON;)V

    .line 850
    const-string v0, "orientationProperties"

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 851
    :cond_9
    const-string v2, "setExpandProperties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 852
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->u:Lcom/apprupt/sdk/adview/ExpandProperties;

    const-string v3, "properties"

    invoke-virtual {v0, v3}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apprupt/sdk/adview/ExpandProperties;->a(Lcom/apprupt/sdk/SimpleJSON;)V

    .line 853
    const-string v0, "expandProperties"

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 854
    :cond_a
    const-string v2, "setResizeProperties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 855
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->t:Lcom/apprupt/sdk/adview/ResizeProperties;

    const-string v3, "properties"

    invoke-virtual {v0, v3}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apprupt/sdk/adview/ResizeProperties;->a(Lcom/apprupt/sdk/SimpleJSON;)V

    .line 856
    const-string v0, "resizeProperties"

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 857
    :cond_b
    const-string v2, "useCustomClose"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 858
    const-string v2, "value"

    invoke-virtual {v0, v2}, Lcom/apprupt/sdk/SimpleJSON;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->a(Z)V

    .line 859
    const-string v0, "expandProperties"

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 860
    :cond_c
    const-string v2, "appIsInstalled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 861
    const-string v2, "bundle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/apprupt/sdk/MRAIDView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 862
    :cond_d
    const-string v2, "appIsRunning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 863
    const-string v2, "bundle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/apprupt/sdk/MRAIDView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 864
    :cond_e
    const-string v2, "appInfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 865
    const-string v2, "bundle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/apprupt/sdk/MRAIDView;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 866
    :cond_f
    const-string v2, "connectionInfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 867
    invoke-direct {p0, p3}, Lcom/apprupt/sdk/MRAIDView;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 868
    :cond_10
    const-string v2, "setBackground"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 869
    const-string v2, "background"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 870
    :cond_11
    const-string v2, "vibrate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 871
    const-string v2, "length"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/apprupt/sdk/SimpleJSON;->b(Ljava/lang/String;Ljava/lang/Number;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/apprupt/sdk/MRAIDView;->a(J)V

    goto/16 :goto_0

    .line 872
    :cond_12
    const-string v0, "veCompleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 873
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->o()V

    goto/16 :goto_0

    .line 875
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/apprupt/sdk/MRAIDView;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/apprupt/sdk/MRAIDView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView;->k:Ljava/util/Timer;

    return-object p1
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->h()Lcom/apprupt/sdk/Vibrator$API;

    move-result-object v0

    .line 886
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 887
    invoke-interface {v0, p1, p2}, Lcom/apprupt/sdk/Vibrator$API;->a(J)V

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    invoke-interface {v0}, Lcom/apprupt/sdk/Vibrator$API;->a()V

    goto :goto_0
.end method

.method private a(Lcom/apprupt/sdk/MRAIDView$MraidState;)V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->i:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-eq v0, p1, :cond_0

    .line 516
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView;->i:Lcom/apprupt/sdk/MRAIDView$MraidState;

    .line 517
    const-string v0, "state"

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->h(Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/MRAIDView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->l()V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/MRAIDView;Lcom/apprupt/sdk/MRAIDView$MraidState;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/MRAIDView;->a(Lcom/apprupt/sdk/MRAIDView$MraidState;)V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/MRAIDView;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 531
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvAppInfo;->b()Lcom/apprupt/sdk/Connectivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/Connectivity;->e()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/apprupt/sdk/MRAIDView;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 535
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 536
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/apprupt/sdk/CvAppInfo;->a:Lcom/apprupt/sdk/CvAppsList;

    new-instance v1, Lcom/apprupt/sdk/MRAIDView$10;

    invoke-direct {v1, p0, p2}, Lcom/apprupt/sdk/MRAIDView$10;-><init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/apprupt/sdk/CvAppsList;->a(Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$SingleListener;)V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid bundle ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or async id ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 1005
    const-string v1, "%s__receiver(\"%s\", %s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/apprupt/sdk/MRAIDView;->g:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 v3, 0x2

    if-nez p2, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->g(Ljava/lang/String;)V

    .line 1006
    return-void

    .line 1005
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1012
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1013
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p2, v0

    .line 1014
    if-nez v4, :cond_0

    .line 1015
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1013
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    :cond_0
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error building event"

    aput-object v4, v3, v1

    invoke-interface {v2, v0, v3}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1028
    :goto_2
    return-void

    .line 1020
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1021
    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1022
    const-string v3, "params"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1024
    const-string v2, "event"

    invoke-direct {p0, v2, v0}, Lcom/apprupt/sdk/MRAIDView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 742
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$20;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/MRAIDView$20;-><init>(Lcom/apprupt/sdk/MRAIDView;Z)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/MRAIDView;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/apprupt/sdk/MRAIDView;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic b(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/MRAIDView;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 591
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$14;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/MRAIDView$14;-><init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 606
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 548
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 549
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/apprupt/sdk/CvAppInfo;->a:Lcom/apprupt/sdk/CvAppsList;

    new-instance v1, Lcom/apprupt/sdk/MRAIDView$11;

    invoke-direct {v1, p0, p2}, Lcom/apprupt/sdk/MRAIDView$11;-><init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/apprupt/sdk/CvAppsList;->b(Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$SingleListener;)V

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid bundle ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or async id ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1036
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1037
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, p2, v0

    .line 1038
    if-nez v4, :cond_0

    .line 1039
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1037
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1041
    :cond_0
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error building async response"

    aput-object v4, v3, v1

    invoke-interface {v2, v0, v3}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1051
    :goto_2
    return-void

    .line 1044
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1045
    const-string v3, "id"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1046
    const-string v3, "params"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1047
    const-string v2, "async"

    invoke-direct {p0, v2, v0}, Lcom/apprupt/sdk/MRAIDView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic b(Lcom/apprupt/sdk/MRAIDView;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/apprupt/sdk/MRAIDView;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView$MraidState;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->i:Lcom/apprupt/sdk/MRAIDView$MraidState;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 720
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 721
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$19;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/MRAIDView$19;-><init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 739
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 561
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 562
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/apprupt/sdk/CvAppInfo;->a:Lcom/apprupt/sdk/CvAppsList;

    new-instance v1, Lcom/apprupt/sdk/MRAIDView$12;

    invoke-direct {v1, p0, p2}, Lcom/apprupt/sdk/MRAIDView$12;-><init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/apprupt/sdk/CvAppsList;->a(Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$AppInfoListener;)V

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid bundle ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or async id ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/apprupt/sdk/MRAIDView;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/apprupt/sdk/MRAIDView;->y:Z

    return p1
.end method

.method static synthetic d(Lcom/apprupt/sdk/MRAIDView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->k()V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1031
    const-string v0, "error"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/apprupt/sdk/MRAIDView;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1032
    return-void
.end method

.method static synthetic d(Lcom/apprupt/sdk/MRAIDView;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/apprupt/sdk/MRAIDView;->s:Z

    return p1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/high16 v6, 0x10000000

    const/high16 v5, 0x10000

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 759
    const-string v2, "inlineVideo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    invoke-static {p0}, Lcom/apprupt/sdk/CvViewHelper;->a(Landroid/view/View;)Z

    move-result v0

    .line 773
    :cond_0
    :goto_0
    return v0

    .line 761
    :cond_1
    const-string v2, "sms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 762
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "sms:+4940123123123"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 763
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 764
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 765
    :cond_2
    const-string v2, "tel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 766
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "tel:+4940123123123"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 767
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 768
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 769
    :cond_3
    const-string v2, "appsInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "connectionInfo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 771
    const-string v2, "background"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 772
    const-string v2, "pauseResume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 773
    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 777
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$21;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/MRAIDView$21;-><init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 801
    return-void
.end method

.method static synthetic e(Lcom/apprupt/sdk/MRAIDView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->s:Z

    return v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 895
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "getProperty"

    aput-object v2, v1, v5

    aput-object p1, v1, v6

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 896
    const-string v0, "state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->i:Lcom/apprupt/sdk/MRAIDView$MraidState;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView$MraidState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    :goto_0
    return-object v0

    .line 897
    :cond_0
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2.0"

    goto :goto_0

    .line 898
    :cond_1
    const-string v0, "expandProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->u:Lcom/apprupt/sdk/adview/ExpandProperties;

    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/ExpandProperties;->c()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 899
    :cond_2
    const-string v0, "resizeProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->t:Lcom/apprupt/sdk/adview/ResizeProperties;

    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/ResizeProperties;->c()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 900
    :cond_3
    const-string v0, "orientationProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->v:Lcom/apprupt/sdk/adview/OrientationProperties;

    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/OrientationProperties;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 901
    :cond_4
    const-string v0, "viewable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->r:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 902
    :cond_5
    const-string v0, "placementType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->h:Ljava/lang/String;

    goto :goto_0

    .line 903
    :cond_6
    const-string v0, "currentPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "defaultPosition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 904
    :cond_7
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 905
    const-string v1, "defaultPosition"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 906
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->q:[I

    .line 910
    :cond_8
    :goto_1
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 911
    const-string v2, "defaultPosition"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 912
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->d:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvAdWrapper;->n()Lcom/apprupt/sdk/mediation/Size;

    move-result-object v2

    iget v2, v2, Lcom/apprupt/sdk/mediation/Size;->b:I

    aput v2, v1, v5

    .line 913
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->d:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-virtual {v2}, Lcom/apprupt/sdk/CvAdWrapper;->n()Lcom/apprupt/sdk/mediation/Size;

    move-result-object v2

    iget v2, v2, Lcom/apprupt/sdk/mediation/Size;->c:I

    aput v2, v1, v6

    .line 918
    :goto_2
    new-instance v2, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v2}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 919
    const-string v3, "x"

    aget v4, v0, v5

    int-to-float v4, v4

    invoke-static {v4}, Lcom/apprupt/sdk/CvViewHelper;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 920
    const-string v3, "y"

    aget v0, v0, v6

    int-to-float v0, v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 921
    const-string v0, "width"

    aget v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 922
    const-string v0, "height"

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 923
    iget-object v0, v2, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 907
    :cond_9
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 908
    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->getLocationOnScreen([I)V

    goto :goto_1

    .line 915
    :cond_a
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/apprupt/sdk/CvViewHelper;->a(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v5

    .line 916
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/apprupt/sdk/CvViewHelper;->a(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v6

    goto :goto_2

    .line 925
    :cond_b
    const-string v0, "screenSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "maxSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 926
    :cond_c
    sget-object v0, Lcom/apprupt/sdk/CvViewHelper;->b:Landroid/graphics/Point;

    .line 927
    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 928
    const-string v2, "width"

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 929
    const-string v2, "height"

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 930
    iget-object v0, v1, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 932
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown property: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProperty"

    invoke-direct {p0, v0, v1}, Lcom/apprupt/sdk/MRAIDView;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 904
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 910
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic f(Lcom/apprupt/sdk/MRAIDView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->w:Z

    return v0
.end method

.method static synthetic g(Lcom/apprupt/sdk/MRAIDView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->h:Ljava/lang/String;

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 964
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$23;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/MRAIDView$23;-><init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 974
    return-void
.end method

.method static synthetic h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->d:Lcom/apprupt/sdk/CvAdWrapper;

    return-object v0
.end method

.method private declared-synchronized h()Lcom/apprupt/sdk/Vibrator$API;
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->x:Lcom/apprupt/sdk/Vibrator$API;

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/Vibrator;->a(Landroid/content/Context;)Lcom/apprupt/sdk/Vibrator$API;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->x:Lcom/apprupt/sdk/Vibrator$API;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->x:Lcom/apprupt/sdk/Vibrator$API;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 978
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->j:Z

    if-eqz v0, :cond_0

    .line 979
    new-instance v0, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v0}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 980
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 981
    const-string v1, "value"

    invoke-direct {p0, p1}, Lcom/apprupt/sdk/MRAIDView;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 982
    const-string v1, "%s__bridge.update(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/apprupt/sdk/MRAIDView;->g:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->g(Ljava/lang/String;)V

    .line 984
    :cond_0
    const-string v0, "viewable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 985
    :cond_1
    new-instance v0, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v0}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 986
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 987
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/MRAIDView;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 988
    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 989
    const-string v1, "name"

    const-string v2, "%sChange"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 990
    const-string v1, "event"

    iget-object v0, v0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v0}, Lcom/apprupt/sdk/MRAIDView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1002
    :cond_2
    :goto_0
    return-void

    .line 991
    :cond_3
    const-string v0, "currentPosition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 992
    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 993
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 994
    new-instance v3, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {p0, p1}, Lcom/apprupt/sdk/MRAIDView;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lcom/apprupt/sdk/SimpleJSON;-><init>(Lorg/json/JSONObject;)V

    .line 995
    const-string v0, "width"

    invoke-virtual {v3, v0}, Lcom/apprupt/sdk/SimpleJSON;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 996
    const-string v0, "height"

    invoke-virtual {v3, v0}, Lcom/apprupt/sdk/SimpleJSON;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 997
    const-string v0, "params"

    invoke-virtual {v1, v0, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 998
    const-string v0, "name"

    const-string v2, "sizeChange"

    invoke-virtual {v1, v0, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 999
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->c:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Fire sizeChange event"

    aput-object v3, v2, v4

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 1000
    const-string v0, "event"

    iget-object v1, v1, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/apprupt/sdk/MRAIDView;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/apprupt/sdk/MRAIDView;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->k:Ljava/util/Timer;

    return-object v0
.end method

.method private i()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    .line 383
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->l:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 384
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    aget v5, v0, v1

    .line 385
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    aget v6, v0, v2

    .line 386
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getWidth()I

    move-result v4

    .line 387
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getHeight()I

    move-result v7

    .line 388
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->getLocationOnScreen([I)V

    .line 389
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(Landroid/content/Context;)V

    .line 390
    sget-object v0, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/apprupt/sdk/MRAIDView;->m:[I

    aget v3, v3, v1

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/apprupt/sdk/MRAIDView;->m:[I

    aget v3, v3, v2

    if-eq v0, v3, :cond_9

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->m:[I

    sget-object v3, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    aput v3, v0, v1

    .line 392
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->m:[I

    sget-object v3, Lcom/apprupt/sdk/CvViewHelper;->a:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    aput v3, v0, v2

    move v0, v2

    .line 395
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/apprupt/sdk/MRAIDView;->m:[I

    aget v8, v8, v1

    iget-object v9, p0, Lcom/apprupt/sdk/MRAIDView;->m:[I

    aget v9, v9, v2

    invoke-direct {v3, v1, v1, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 396
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    aget v9, v9, v1

    iget-object v10, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    aget v10, v10, v2

    invoke-direct {v8, v9, v10, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 397
    invoke-static {v3, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    .line 400
    :goto_1
    iget-object v8, p0, Lcom/apprupt/sdk/MRAIDView;->o:[I

    aget v8, v8, v1

    if-ne v4, v8, :cond_1

    iget-object v8, p0, Lcom/apprupt/sdk/MRAIDView;->o:[I

    aget v8, v8, v2

    if-eq v7, v8, :cond_7

    .line 401
    :cond_1
    iget-object v8, p0, Lcom/apprupt/sdk/MRAIDView;->o:[I

    aput v4, v8, v1

    .line 402
    iget-object v4, p0, Lcom/apprupt/sdk/MRAIDView;->o:[I

    aput v7, v4, v2

    move v4, v2

    .line 405
    :goto_2
    iget-object v7, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    aget v1, v7, v1

    if-ne v5, v1, :cond_2

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    aget v1, v1, v2

    if-eq v6, v1, :cond_6

    :cond_2
    move v1, v2

    .line 410
    :goto_3
    if-eqz v0, :cond_3

    const-string v0, "screenSize"

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->h(Ljava/lang/String;)V

    .line 411
    :cond_3
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->r:Z

    if-eq v0, v3, :cond_4

    .line 412
    iput-boolean v3, p0, Lcom/apprupt/sdk/MRAIDView;->r:Z

    .line 413
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->k()V

    .line 414
    const-string v0, "viewable"

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->h(Ljava/lang/String;)V

    .line 415
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->r:Z

    if-eqz v0, :cond_4

    .line 416
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$8;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$8;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 428
    :cond_4
    if-eqz v1, :cond_5

    .line 429
    const-string v0, "currentPosition"

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->h(Ljava/lang/String;)V

    .line 431
    :cond_5
    return-void

    :cond_6
    move v1, v4

    goto :goto_3

    :cond_7
    move v4, v1

    goto :goto_2

    :cond_8
    move v3, v1

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    move v0, v1

    move v3, v1

    goto :goto_3
.end method

.method private j()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 434
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->j:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "FIX SCRIPT"

    aput-object v2, v1, v5

    const-string v2, "(function () {\n    var name   = \'%s__bridge\',\n        properties = %s,\n        supports = %s,\n        bridge;\n    this[name] = {\n        request : function (name, params, id) {\n            if (name == \'getProperty\') {\n                var propname = JSON.parse(params).name;\n                return JSON.stringify({value: (properties[propname] === void(0) ? \'\' : properties[propname])});\n            } else if (name == \'supports\') {\n                return !!supports[JSON.parse(params).feature];\n            } else {\n                (function () {\n                    var frame = document.createElement(\'iframe\');\n                    frame.style.position = \'absolue\';\n                    frame.style.top = \'-10000px\';\n                    frame.style.left = \'-10000px\';\n                    frame.src = \'mraid://\' + name + \'?params=\' + encodeURIComponent(params) + \'&asyncId=\' + (id ? id : \'\');\n                    document.body.appendChild(frame);\n                    setTimeout(function () {\n                        frame.parentNode.removeChild(frame);\n                    }, 100);\n                }());\n            }\n        },\n        update : function (msg) {\n            properties[msg.name] = msg.value;\n        }\n    };\n}).call(window);"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/apprupt/sdk/MRAIDView;->g:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 437
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->q()Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 438
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->r()Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 435
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 439
    const-string v0, "(function () {\n    var name   = \'%s__bridge\',\n        properties = %s,\n        supports = %s,\n        bridge;\n    this[name] = {\n        request : function (name, params, id) {\n            if (name == \'getProperty\') {\n                var propname = JSON.parse(params).name;\n                return JSON.stringify({value: (properties[propname] === void(0) ? \'\' : properties[propname])});\n            } else if (name == \'supports\') {\n                return !!supports[JSON.parse(params).feature];\n            } else {\n                (function () {\n                    var frame = document.createElement(\'iframe\');\n                    frame.style.position = \'absolue\';\n                    frame.style.top = \'-10000px\';\n                    frame.style.left = \'-10000px\';\n                    frame.src = \'mraid://\' + name + \'?params=\' + encodeURIComponent(params) + \'&asyncId=\' + (id ? id : \'\');\n                    document.body.appendChild(frame);\n                    setTimeout(function () {\n                        frame.parentNode.removeChild(frame);\n                    }, 100);\n                }());\n            }\n        },\n        update : function (msg) {\n            properties[msg.name] = msg.value;\n        }\n    };\n}).call(window);"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView;->g:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 441
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->q()Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 442
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->r()Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apprupt/sdk/SimpleJSON;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 439
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic j(Lcom/apprupt/sdk/MRAIDView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->i()V

    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 523
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->r:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->q:[I

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    aget v1, v1, v2

    aput v1, v0, v2

    .line 525
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->q:[I

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView;->n:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 526
    const-string v0, "defaultPosition"

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->h(Ljava/lang/String;)V

    .line 528
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/apprupt/sdk/MRAIDView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->n()V

    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$13;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$13;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 588
    return-void
.end method

.method static synthetic l(Lcom/apprupt/sdk/MRAIDView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->y:Z

    return v0
.end method

.method static synthetic m(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/adview/ResizeProperties;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->t:Lcom/apprupt/sdk/adview/ResizeProperties;

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 609
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$15;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$15;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 643
    return-void
.end method

.method static synthetic n(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/adview/ExpandProperties;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->u:Lcom/apprupt/sdk/adview/ExpandProperties;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 646
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$16;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$16;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 682
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 685
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$17;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$17;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 693
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 696
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$18;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$18;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 717
    return-void
.end method

.method private q()Lcom/apprupt/sdk/SimpleJSON;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 937
    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 938
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "state"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "expandProperties"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "resizeProperties"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "orientationProperties"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "viewable"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "placementType"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "currentPosition"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "defaultPosition"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "screenSize"

    aput-object v4, v2, v3

    .line 948
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 949
    invoke-direct {p0, v4}, Lcom/apprupt/sdk/MRAIDView;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_0
    return-object v1
.end method

.method private r()Lcom/apprupt/sdk/SimpleJSON;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 955
    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 956
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "inlineVideo"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "sms"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "tel"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "appsInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "connectionInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "background"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "pauseResume"

    aput-object v4, v2, v3

    .line 957
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 958
    invoke-direct {p0, v4}, Lcom/apprupt/sdk/MRAIDView;->d(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 960
    :cond_0
    return-object v1
.end method


# virtual methods
.method a()Lcom/apprupt/sdk/MRAIDView$MraidState;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->i:Lcom/apprupt/sdk/MRAIDView$MraidState;

    return-object v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$5;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$5;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method c()Z
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->i:Lcom/apprupt/sdk/MRAIDView$MraidState;

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->c:Lcom/apprupt/sdk/MRAIDView$MraidState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->i:Lcom/apprupt/sdk/MRAIDView$MraidState;

    sget-object v1, Lcom/apprupt/sdk/MRAIDView$MraidState;->d:Lcom/apprupt/sdk/MRAIDView$MraidState;

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/MRAIDView$MraidState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->h:Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 804
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$22;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$22;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    return-object v0
.end method

.method f()Lcom/apprupt/sdk/adview/ExpandProperties;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->u:Lcom/apprupt/sdk/adview/ExpandProperties;

    return-object v0
.end method

.method g()Lcom/apprupt/sdk/adview/OrientationProperties;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->v:Lcom/apprupt/sdk/adview/OrientationProperties;

    return-object v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<script type=\"text/javascript\">\n(function () {\n    \n    if (!Function.prototype.bind) {\n        Function.prototype.bind = function (oThis) {\n            if (typeof this !== \"function\") {\n                // closest thing possible to the ECMAScript 5\n                // internal IsCallable function\n                throw new TypeError(\"Function.prototype.bind - what is trying to be bound is not callable\");\n            }\n            var aArgs = Array.prototype.slice.call(arguments, 1), \n                fToBind = this, \n                fNOP = function () {},\n                fBound = function () {\n                    return fToBind.apply(this instanceof fNOP && oThis ? this : oThis, aArgs.concat(Array.prototype.slice.call(arguments)));\n                };\n            fNOP.prototype = this.prototype;\n            fBound.prototype = new fNOP();\n            return fBound;\n        };\n    }\n    \n    // stop scrolling\n    document.addEventListener(\'touchmove\', function (e) {\n        e.preventDefault();\n        e.returnValue = false;\n        return false;\n    }, false);\n    \n}).call(window);\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 453
    invoke-direct {p0}, Lcom/apprupt/sdk/MRAIDView;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "var mraid = (function () {\n    \n    var MRAID20 = function () { this.init(); },\n        prefix = \'%s\',\n        bridge = this[prefix + \'__bridge\'],\n        listeners = {},\n        callbacks = (function () {\n            var counter = 0,\n                cb = {};\n            return {\n                register : function (func) {\n                    if (typeof(func) != \'function\') {\n                        return \'\';\n                    }\n                    var id = \'cb\' + (++counter);\n                    cb[id] = func;\n                    return id;\n                },\n                clear : function (id) {\n                    try {\n                        if (id in cb) {\n                            delete cb[id];\n                        }\n                    } catch (e) {\n                        // pass\n                    }\n                },\n                run : function (id, params) {\n                    try {\n                        if (id in cb) {\n                            cb[id].apply(null, params || []);\n                        }\n                    } catch (e) {\n                        console.error(e);\n                    }\n                    clear(id);\n                }\n            };\n        }()),\n        mraid, publicIface;\n\n    \n\n    console.info(\"prefix: \" + prefix);\n\n    MRAID20.prototype = {\n        \n        init : function () {\n            this.listeners = listeners;\n        },\n        \n        fireEvent : function (event, params) {\n            if (this.listeners[event] && this.listeners[event].length) {\n                this.listeners[event].forEach(function (listener) {\n                    try {\n                        listener.apply(null, params || []);\n                    } catch (e) {\n                        console.error(\'Error while running \' + event + \' listener\', e);\n                    }\n                });\n            }\n        },\n        \n        sendRequest : function (name, params, func) {\n            if (!params) {\n                params = \'\';\n            } else {\n                try {\n                    params = JSON.stringify(params);\n                } catch (e) {\n                    this.fireEvent(\'error\', [\'Error sending params\', name]);\n                    return;\n                }\n            }\n            var r = bridge.request(name, params, callbacks.register(func));\n            if (typeof(r) === \'string\' && r) {\n                try {\n                    r = JSON.parse(r);\n                    return r.value;\n                } catch (e) {\n                    r = null;\n                }\n            }\n            return r;\n        },\n        \n        getProperty : function (name) {\n            return this.sendRequest(\'getProperty\', {\'name\' : name});\n        },\n        \n        handleMessage : function (name, message) {\n            if (name == \'event\') {\n                this.fireEvent(message.name, message.params);\n                if (message.name == \'viewableChange\') {\n                    this.fireEvent(\'pauseResumeChange\', [!this.isViewable()]);\n                    this.fireEvent((this.isViewable() ? \'resume\' : \'pause\'), []);\n                }\n            } else if (name == \'async\') {\n                callbacks.run(message.id, message.params);\n            }\n        },\n        \n        \n        // public interface\n\n        addEventListener : function (event, listener) {\n            if (!listeners[event]) {\n                listeners[event] = [];\n            }\n            listeners[event].push(listener);\n        },\n\n        removeEventListener : function (event, listener) {\n            if (listeners[event]) {\n                var index = 0;\n                while (index < listeners[event].length) {\n                    if (listeners[event][index] === listener) {\n                        listeners[event].splice(index, 1);\n                    } else {\n                        ++index;\n                    }\n                }\n            }\n        },\n\n        createCalendarEvent : function (event) {\n            // not supported as of lack of system default calendar app\n            // this.fireEvent(\'error\', [\'Creating calendar event is not supported\', \'createCalendarEvent\']);\n            this.sendRequest(\'createCalendarEvent\', {\'event\' : event});\n        },\n\n        close : function () {\n            this.sendRequest(\'close\');\n        },\n\n        veCompleted : function () {\n            this.sendRequest(\'veCompleted\');\n        },\n\n        kill : function () {\n            this.sendRequest(\'kill\');\n        },\n\n        expand : function (url) {\n            this.sendRequest(\'expand\', {url: url});\n        },\n\n        getCurrentPosition : function () {\n            return this.getProperty(\'currentPosition\');\n        },\n\n        getDefaultPosition : function () {\n            return this.getProperty(\'defaultPosition\');\n        },\n\n        getExpandProperties : function () {\n            return this.getProperty(\'expandProperties\');\n        },\n        \n        getOrientationProperties : function () {\n            return this.getProperty(\'orientationProperties\');\n        },\n\n        getMaxSize : function () {\n            return this.getProperty(\'screenSize\');\n        },\n\n        getPlacementType : function () {\n            return this.getProperty(\'placementType\');\n        },\n\n        getResizeProperties : function () {\n            return this.getProperty(\'resizeProperties\');\n        },\n\n        getScreenSize  : function () {\n            return this.getProperty(\'screenSize\');\n        },\n\n        getState : function () {\n            return this.getProperty(\'state\');\n        },\n\n        getVersion : function () {\n            return this.getProperty(\'version\');\n        },\n\n        isViewable : function () {\n            return this.getProperty(\'viewable\');\n        },\n        \n        isPaused : function () {\n            return !this.isViewable();\n        },\n        \n        getViewable : function () {\n            return this.getProperty(\'viewable\');\n        },\n\n        open : function (url) {\n            this.sendRequest(\'open\', {\'url\' : url});\n        },\n\n        playVideo : function (url) {\n            //this.sendRequest(\'playVideo\', {\'url\' : url});\n            this.sendRequest(\'open\', {\'url\' : url});\n        },\n\n        resize : function () {\n            this.sendRequest(\'resize\');\n        },\n\n        setExpandProperties : function (properties) {\n            this.sendRequest(\'setExpandProperties\', {\'properties\' : properties});\n        },\n\n        setResizeProperties : function (properties) {\n            this.sendRequest(\'setResizeProperties\', {\'properties\' : properties});\n        },\n        \n        setOrientationProperties : function (properties) {\n            this.sendRequest(\'setOrientationProperties\', {\'properties\' : properties});\n        },\n\n        storePicture : function (url) {\n            this.sendRequest(\'storePicture\', {\'url\' : url});\n        },\n\n        supports : function (feature) {\n            return this.sendRequest(\'supports\', {\"feature\": feature});\n        },\n\n        useCustomClose : function (shouldUseCustomClose) {\n            this.sendRequest(\'useCustomClose\', {\'value\': shouldUseCustomClose});\n        },\n        \n        appIsInstalled : function (bundle, scheme, callback) {\n            this.sendRequest(\'appIsInstalled\', {\'bundle\': bundle}, callback);\n        },\n        \n        appIsRunning : function (bundle, scheme, callback) {\n            this.sendRequest(\'appIsRunning\', {\'bundle\': bundle}, callback);\n        },\n        \n        appInfo : function (bundle, scheme, callback) {\n            this.sendRequest(\'appInfo\', {\'bundle\': bundle}, callback);\n        },\n\n        connectionInfo : function (callback) {\n            this.sendRequest(\"connectionInfo\", null, callback);\n        },\n\n        setBackground : function (background) {\n            this.sendRequest(\"setBackground\", {\"background\": background});\n        },\n\n        vibrate : function (lenght) {\n            this.sendRequest(\"vibrate\", {\"length\": lenght});\n        }\n\n    };\n    \n    \n    \n    mraid = new MRAID20();\n    this[prefix + \'__receiver\'] = mraid.handleMessage.bind(mraid);\n    publicIface = {};\n    (function () {\n        var key;\n        for (key in mraid) {\n            switch (key) {\n                case \'getProperty\'   :\n                case \'sendMessage\'   :\n                case \'listeners\'     : \n                case \'fireEvent\'     :\n                case \'handleMessage\' :\n                    break;\n                default :\n                    publicIface[key] = mraid[key].bind(mraid);\n                    break;\n            }\n        }\n    }());\n    \n    return publicIface;\n}).call(window);"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/apprupt/sdk/MRAIDView;->g:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 454
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n</script>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 458
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 460
    const-string v1, "<html"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 461
    if-ltz v1, :cond_3

    .line 462
    new-array v6, v6, [Ljava/lang/String;

    const-string v3, "<script"

    aput-object v3, v6, v2

    const-string v3, "<head>"

    aput-object v3, v6, v0

    .line 464
    array-length v7, v6

    move v3, v0

    move v0, v1

    move v1, v2

    :goto_0
    if-ge v1, v7, :cond_0

    aget-object v8, v6, v1

    .line 465
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 466
    if-ltz v0, :cond_1

    .line 467
    if-nez v3, :cond_0

    .line 468
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_0
    if-ltz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 479
    :goto_2
    const-string v0, "\\[containerId\\]"

    invoke-static {}, Lcom/apprupt/sdk/CvRandomString;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\[cvId\\]"

    .line 480
    invoke-static {}, Lcom/apprupt/sdk/CvRandomString;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    sget-object v0, Lcom/apprupt/sdk/MRAIDView$MraidState;->a:Lcom/apprupt/sdk/MRAIDView$MraidState;

    iput-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->i:Lcom/apprupt/sdk/MRAIDView$MraidState;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 482
    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void

    .line 464
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 475
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 477
    :cond_3
    const-string v1, "<!DOCTYPE html>\n<html>\n<head>\n<title>CvAd</title>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n<meta name=\"viewport\" content=\"initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\" />\n<style type=\"text/css\">\n* {-webkit-tap-highlight-color: rgba(0,0,0,0.0); }\nhtml,body {padding:0;margin:0;width:100%%;height:100%%;-webkit-text-size-adjust:100%%;overflow:hidden;}\n</style>\n%s\n</head>\n<body id=\"[containerId]\">\n%s\n</body>\n</html>"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object p2, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/apprupt/sdk/MRAIDView;->w:Z

    if-eqz v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 488
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    invoke-static {p1}, Lcom/apprupt/sdk/URLRequest;->c(Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/MRAIDView$9;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/MRAIDView$9;-><init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/URLRequest;->a(Lcom/apprupt/sdk/URLRequest$Listener;)Lcom/apprupt/sdk/URLRequest;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lcom/apprupt/sdk/URLRequest;->b()Lcom/apprupt/sdk/URLRequest;

    goto :goto_0

    .line 505
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 333
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$6;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$6;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 361
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 366
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$7;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/MRAIDView$7;-><init>(Lcom/apprupt/sdk/MRAIDView;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 376
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v2, -0x1

    .line 275
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->h:Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 283
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->f:Lcom/apprupt/sdk/mediation/Size;

    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/apprupt/sdk/mediation/Size;->a(Landroid/content/Context;IIZ)Lcom/apprupt/sdk/mediation/Size$Computed;

    move-result-object v3

    .line 293
    invoke-virtual {p0}, Lcom/apprupt/sdk/MRAIDView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 294
    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView;->f:Lcom/apprupt/sdk/mediation/Size;

    invoke-virtual {v1, v6}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 295
    iget v1, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->b:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 297
    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/MRAIDView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView;->f:Lcom/apprupt/sdk/mediation/Size;

    invoke-virtual {v0, v6}, Lcom/apprupt/sdk/mediation/Size;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iget v0, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->b:I

    invoke-virtual {p0, v2, v0}, Lcom/apprupt/sdk/MRAIDView;->setMeasuredDimension(II)V

    .line 302
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 303
    return-void

    .line 294
    :cond_2
    iget v1, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->a:I

    goto :goto_0

    .line 299
    :cond_3
    iget v2, v3, Lcom/apprupt/sdk/mediation/Size$Computed;->a:I

    goto :goto_1
.end method
