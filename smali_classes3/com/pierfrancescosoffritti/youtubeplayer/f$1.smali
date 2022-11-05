.class Lcom/pierfrancescosoffritti/youtubeplayer/f$1;
.super Ljava/lang/Object;
.source "YouTubePlayerBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/f;->onStateChange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pierfrancescosoffritti/youtubeplayer/f;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;->b:Lcom/pierfrancescosoffritti/youtubeplayer/f;

    iput-object p2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;->b:Lcom/pierfrancescosoffritti/youtubeplayer/f;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/f;->a(Lcom/pierfrancescosoffritti/youtubeplayer/f;)Lcom/pierfrancescosoffritti/youtubeplayer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;

    .line 35
    const-string v2, "UNSTARTED"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->a(I)V

    goto :goto_0

    .line 37
    :cond_1
    const-string v2, "ENDED"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->a(I)V

    goto :goto_0

    .line 39
    :cond_2
    const-string v2, "PLAYING"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->a(I)V

    goto :goto_0

    .line 41
    :cond_3
    const-string v2, "PAUSED"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->a(I)V

    goto :goto_0

    .line 43
    :cond_4
    const-string v2, "BUFFERING"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->a(I)V

    goto :goto_0

    .line 45
    :cond_5
    const-string v2, "CUED"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->a(I)V

    goto :goto_0

    .line 47
    :cond_6
    return-void
.end method
