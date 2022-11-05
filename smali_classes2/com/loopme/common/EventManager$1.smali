.class Lcom/loopme/common/EventManager$1;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/common/EventManager;->trackSdkEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/common/EventManager;

.field final synthetic val$eventUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/loopme/common/EventManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/loopme/common/EventManager$1;->this$0:Lcom/loopme/common/EventManager;

    iput-object p2, p0, Lcom/loopme/common/EventManager$1;->val$eventUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    .line 55
    const/4 v1, 0x0

    .line 58
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/loopme/common/EventManager$1;->val$eventUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/loopme/common/EventManager;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/loopme/common/EventManager;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    .line 69
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 65
    :catch_2
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 62
    :catch_3
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method
