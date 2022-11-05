.class Lcom/amazon/device/ads/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/amazon/device/ads/GraphicsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/GraphicsUtils;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/GraphicsUtils;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/GraphicsUtils;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public createBitmapImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const v0, 0x8000

    .line 25
    if-eqz p1, :cond_0

    .line 28
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 30
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 32
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v1

    .line 39
    iget-object v1, p0, Lcom/amazon/device/ads/GraphicsUtils;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "IOException while trying to close the input stream."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertImageInMediaStore(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
