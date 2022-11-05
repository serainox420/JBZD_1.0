.class Lcom/smaato/soma/nativead/NativeAd$c;
.super Landroid/os/AsyncTask;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/nativead/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/smaato/soma/nativead/NativeAd;


# direct methods
.method public constructor <init>(Lcom/smaato/soma/nativead/NativeAd;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/smaato/soma/nativead/NativeAd$c;->b:Lcom/smaato/soma/nativead/NativeAd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$c;->a:Landroid/widget/ImageView;

    .line 1539
    iput-object p2, p0, Lcom/smaato/soma/nativead/NativeAd$c;->a:Landroid/widget/ImageView;

    .line 1540
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1543
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 1544
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1561
    :goto_0
    return-object v0

    .line 1549
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1550
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1551
    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1552
    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1553
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1554
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1556
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1557
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1559
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1560
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/smaato/soma/nativead/NativeAd$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1566
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1535
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smaato/soma/nativead/NativeAd$c;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1535
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/smaato/soma/nativead/NativeAd$c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
