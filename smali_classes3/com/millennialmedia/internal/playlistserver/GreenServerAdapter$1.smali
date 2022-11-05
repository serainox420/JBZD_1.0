.class Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;
.super Ljava/lang/Object;
.source "GreenServerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

.field final synthetic c:I

.field final synthetic d:Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;I)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->d:Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

    iput-object p2, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->b:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    iput p4, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 287
    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->b:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create post request data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    .line 312
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad request url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_1
    iget v1, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->c:I

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 297
    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->b:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Get request failed to get ad"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 302
    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad response content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_3
    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->a(Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;)Lcom/millennialmedia/internal/PlayList;

    move-result-object v0

    .line 307
    if-nez v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->b:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to get valid playlist"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 310
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->b:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadSucceeded(Lcom/millennialmedia/internal/PlayList;)V

    goto :goto_0
.end method
