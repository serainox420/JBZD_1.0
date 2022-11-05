.class Lcom/openx/view/WebViewInterstitial$DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "WebViewInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/view/WebViewInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadImageTask"
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
.field final synthetic this$0:Lcom/openx/view/WebViewInterstitial;


# direct methods
.method private constructor <init>(Lcom/openx/view/WebViewInterstitial;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;->this$0:Lcom/openx/view/WebViewInterstitial;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/view/WebViewInterstitial;Lcom/openx/view/WebViewInterstitial$1;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;-><init>(Lcom/openx/view/WebViewInterstitial;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 80
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 91
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    :goto_1
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 85
    :goto_2
    const-string v3, "WebViewBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadImageTask failed with : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/openx/common/utils/logger/OXLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 95
    const-string v1, "WebViewBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadImageTask failed to close inputstream : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/openx/common/utils/logger/OXLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 83
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;->this$0:Lcom/openx/view/WebViewInterstitial;

    invoke-static {v0, p1}, Lcom/openx/view/WebViewInterstitial;->access$102(Lcom/openx/view/WebViewInterstitial;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 105
    iget-object v0, p0, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;->this$0:Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {v0}, Lcom/openx/view/WebViewInterstitial;->getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;->this$0:Lcom/openx/view/WebViewInterstitial;

    invoke-virtual {v0}, Lcom/openx/view/WebViewInterstitial;->getPreloadedListener()Lcom/openx/view/video/PreloadManager$PreloadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;->this$0:Lcom/openx/view/WebViewInterstitial;

    invoke-interface {v0, v1}, Lcom/openx/view/video/PreloadManager$PreloadedListener;->preloaded(Lcom/openx/view/WebViewBase;)V

    .line 110
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/openx/view/WebViewInterstitial$DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
