.class Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubmatic/sdk/banner/ImageRequest;


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/banner/ImageRequest;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/banner/ImageRequest;Lcom/pubmatic/sdk/banner/ImageRequest$1;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;-><init>(Lcom/pubmatic/sdk/banner/ImageRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 71
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-static {v4}, Lcom/pubmatic/sdk/banner/ImageRequest;->access$100(Lcom/pubmatic/sdk/banner/ImageRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 74
    iget-object v4, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-static {v4}, Lcom/pubmatic/sdk/banner/ImageRequest;->access$200(Lcom/pubmatic/sdk/banner/ImageRequest;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 75
    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    .line 77
    invoke-static {v5}, Lcom/pubmatic/sdk/banner/ImageRequest;->access$300(Lcom/pubmatic/sdk/banner/ImageRequest;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "Connection"

    const-string v5, "close"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 82
    const-string v4, "GET"

    .line 83
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    .line 86
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/ImageRequest;->access$400(Lcom/pubmatic/sdk/banner/ImageRequest;)Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-static {v0}, Lcom/pubmatic/sdk/banner/ImageRequest;->access$400(Lcom/pubmatic/sdk/banner/ImageRequest;)Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pubmatic/sdk/banner/ImageRequest$Handler;->imageFailed(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Exception;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 94
    new-instance v5, Ljava/io/BufferedInputStream;

    const v6, 0x8000

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 96
    const v4, 0x8000

    invoke-virtual {v5, v4}, Ljava/io/InputStream;->mark(I)V

    .line 99
    iget-object v4, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-static {v4}, Lcom/pubmatic/sdk/banner/ImageRequest;->access$500(Lcom/pubmatic/sdk/banner/ImageRequest;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    const/4 v4, 0x3

    new-array v4, v4, [B

    .line 101
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    .line 102
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_2

    const/4 v6, 0x2

    aget-byte v4, v4, v6

    const/16 v6, 0x46

    if-ne v4, v6, :cond_2

    move v1, v3

    .line 106
    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    .line 111
    :cond_3
    if-eqz v1, :cond_5

    .line 112
    new-instance v1, Lcom/pubmatic/sdk/banner/ui/GifDecoder;

    invoke-direct {v1}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;-><init>()V

    .line 113
    invoke-virtual {v1, v5}, Lcom/pubmatic/sdk/banner/ui/GifDecoder;->read(Ljava/io/InputStream;)I

    move-result v3

    .line 115
    if-nez v3, :cond_7

    .line 126
    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    .line 127
    iget-object v2, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-static {v2}, Lcom/pubmatic/sdk/banner/ImageRequest;->access$400(Lcom/pubmatic/sdk/banner/ImageRequest;)Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-interface {v2, v3, v1}, Lcom/pubmatic/sdk/banner/ImageRequest$Handler;->imageReceived(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Object;)V

    .line 132
    :goto_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 133
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/ImageRequest;->access$400(Lcom/pubmatic/sdk/banner/ImageRequest;)Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-interface {v1, v2, v0}, Lcom/pubmatic/sdk/banner/ImageRequest$Handler;->imageFailed(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Exception;)V

    goto :goto_0

    .line 119
    :cond_5
    :try_start_1
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_1

    .line 129
    :cond_6
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    invoke-static {v1}, Lcom/pubmatic/sdk/banner/ImageRequest;->access$400(Lcom/pubmatic/sdk/banner/ImageRequest;)Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;->this$0:Lcom/pubmatic/sdk/banner/ImageRequest;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/pubmatic/sdk/banner/ImageRequest$Handler;->imageFailed(Lcom/pubmatic/sdk/banner/ImageRequest;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method
