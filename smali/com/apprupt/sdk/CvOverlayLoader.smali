.class Lcom/apprupt/sdk/CvOverlayLoader;
.super Ljava/lang/Object;
.source "CvOverlayLoader.java"


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/webkit/WebView;

.field private d:Lcom/apprupt/sdk/CvLauncher;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/CvOverlayLoader;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvOverlayLoader;->e:Z

    .line 29
    iput-object p1, p0, Lcom/apprupt/sdk/CvOverlayLoader;->b:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/apprupt/sdk/CvLauncher;

    iget-object v1, p0, Lcom/apprupt/sdk/CvOverlayLoader;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/CvLauncher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvOverlayLoader;->d:Lcom/apprupt/sdk/CvLauncher;

    .line 31
    iput-boolean p2, p0, Lcom/apprupt/sdk/CvOverlayLoader;->f:Z

    .line 32
    new-instance v0, Lcom/apprupt/sdk/CvOverlayLoader$1;

    invoke-direct {v0, p0, p2}, Lcom/apprupt/sdk/CvOverlayLoader$1;-><init>(Lcom/apprupt/sdk/CvOverlayLoader;Z)V

    .line 67
    new-instance v1, Lcom/apprupt/sdk/CvWebView;

    iget-object v2, p0, Lcom/apprupt/sdk/CvOverlayLoader;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/apprupt/sdk/CvWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apprupt/sdk/CvOverlayLoader;->c:Landroid/webkit/WebView;

    .line 68
    iget-object v1, p0, Lcom/apprupt/sdk/CvOverlayLoader;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvOverlayLoader;)Lcom/apprupt/sdk/CvLauncher;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayLoader;->d:Lcom/apprupt/sdk/CvLauncher;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/apprupt/sdk/CvOverlayLoader;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/apprupt/sdk/CvOverlayLoader;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/apprupt/sdk/CvOverlayLoader;->b:Landroid/content/Context;

    const-class v2, Lcom/apprupt/sdk/CvOverlayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/apprupt/sdk/CvOverlayLoader;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvOverlayLoader;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/apprupt/sdk/CvOverlayLoader;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvOverlayLoader;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvOverlayLoader;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvOverlayLoader;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/apprupt/sdk/CvOverlayLoader;->a()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvOverlayLoader;->f:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/apprupt/sdk/CvOverlayLoader;->a()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayLoader;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    return-void
.end method
