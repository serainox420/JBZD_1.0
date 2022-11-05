.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$8;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->playVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$8;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$8;->a:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->a:Lcom/millennialmedia/internal/JSBridge;

    const-string v1, "playVideo"

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/internal/JSBridge;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public onVideoStarted(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 876
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video activity started for <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void
.end method
