.class public final Lcom/flurry/sdk/eg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/flurry/sdk/eg$a;->b:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/eg$a;->c:Ljava/lang/ref/WeakReference;

    .line 175
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/eg$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/eg$a;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/eg$a;->b:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/eg$a;->b:Ljava/lang/String;

    const-string v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/flurry/sdk/eg$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/flurry/sdk/eg$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/eg$a;->a:Landroid/graphics/Bitmap;

    .line 190
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    .line 1117
    iget-object v1, v1, Lcom/flurry/sdk/jy;->b:Landroid/os/Handler;

    .line 190
    new-instance v2, Lcom/flurry/sdk/eg$a$1;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/eg$a$1;-><init>(Lcom/flurry/sdk/eg$a;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 200
    :cond_2
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/flurry/sdk/eg$a;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/16 v3, 0x2710

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 203
    const/16 v3, 0x7530

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 204
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 205
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 206
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 207
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 208
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 209
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/sdk/eg$a;->a:Landroid/graphics/Bitmap;

    .line 210
    iget-object v3, p0, Lcom/flurry/sdk/eg$a;->a:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 211
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v3

    .line 2117
    iget-object v3, v3, Lcom/flurry/sdk/jy;->b:Landroid/os/Handler;

    .line 211
    new-instance v4, Lcom/flurry/sdk/eg$a$2;

    invoke-direct {v4, p0, v0}, Lcom/flurry/sdk/eg$a$2;-><init>(Lcom/flurry/sdk/eg$a;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 230
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 234
    :cond_4
    :goto_2
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 221
    :cond_5
    const/16 v4, 0x12d

    if-ne v3, v4, :cond_3

    .line 222
    :try_start_4
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v3

    .line 2145
    iget-object v3, v3, Lcom/flurry/sdk/jy;->c:Landroid/os/Handler;

    .line 222
    new-instance v4, Lcom/flurry/sdk/eg$a;

    const-string v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/flurry/sdk/eg$a;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_6

    .line 230
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 234
    :cond_6
    :goto_4
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 228
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v2, :cond_7

    .line 230
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 234
    :cond_7
    :goto_6
    if-eqz v1, :cond_8

    .line 235
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_6

    .line 228
    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method
