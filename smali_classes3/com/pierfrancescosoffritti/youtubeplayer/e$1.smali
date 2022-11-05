.class Lcom/pierfrancescosoffritti/youtubeplayer/e$1;
.super Landroid/webkit/WebChromeClient;
.source "YouTubePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/e;->a(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pierfrancescosoffritti/youtubeplayer/e;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e$1;->a:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 62
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    if-nez v0, :cond_0

    .line 69
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method
