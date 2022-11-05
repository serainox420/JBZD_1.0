.class public Lcom/openx/view/WebViewInterstitial;
.super Lcom/openx/view/WebViewBase;
.source "WebViewInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/WebViewInterstitial$1;,
        Lcom/openx/view/WebViewInterstitial$DownloadImageTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewBase"


# instance fields
.field private dimColor:I

.field private image:Landroid/graphics/Bitmap;

.field private imageURL:Ljava/lang/String;

.field public isImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/openx/view/WebViewBase;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openx/view/WebViewInterstitial;->isImage:Z

    .line 30
    new-instance v0, Lcom/openx/view/mraid/InterstitialJSInterface;

    invoke-direct {v0, p1, p0}, Lcom/openx/view/mraid/InterstitialJSInterface;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V

    .line 32
    const-string v1, "jsBridge"

    invoke-virtual {p0, v0, v1}, Lcom/openx/view/WebViewInterstitial;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/openx/view/WebViewInterstitial;->setBaseJSInterface(Lcom/openx/view/mraid/BaseJSInterface;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/openx/model/Ad;Ljava/util/UUID;ZLcom/openx/view/video/PreloadManager$PreloadedListener;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/openx/view/WebViewBase;-><init>(Landroid/content/Context;Lcom/openx/model/Ad;ZLcom/openx/view/video/PreloadManager$PreloadedListener;)V

    .line 24
    iput-boolean v3, p0, Lcom/openx/view/WebViewInterstitial;->isImage:Z

    .line 43
    new-instance v0, Lcom/openx/view/mraid/InterstitialJSInterface;

    invoke-virtual {p0}, Lcom/openx/view/WebViewInterstitial;->getParentContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/openx/view/mraid/InterstitialJSInterface;-><init>(Landroid/content/Context;Lcom/openx/view/WebViewBase;)V

    .line 45
    const-string v1, "jsBridge"

    invoke-virtual {p0, v0, v1}, Lcom/openx/view/WebViewInterstitial;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/openx/view/WebViewInterstitial;->setBaseJSInterface(Lcom/openx/view/mraid/BaseJSInterface;)V

    .line 49
    iput-boolean p6, p0, Lcom/openx/view/WebViewInterstitial;->isImage:Z

    .line 50
    invoke-virtual {p2}, Lcom/openx/model/Ad;->getCreative()Lcom/openx/model/AdCreative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openx/model/AdCreative;->getMedia()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/WebViewInterstitial;->imageURL:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;-><init>(Lcom/openx/view/WebViewInterstitial;Lcom/openx/view/WebViewInterstitial$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/openx/view/WebViewInterstitial;->imageURL:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method

.method static synthetic access$102(Lcom/openx/view/WebViewInterstitial;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/openx/view/WebViewInterstitial;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public getDimColor()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/openx/view/WebViewInterstitial;->dimColor:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/openx/view/WebViewInterstitial;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setDimColor(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/openx/view/WebViewInterstitial;->dimColor:I

    .line 62
    return-void
.end method
