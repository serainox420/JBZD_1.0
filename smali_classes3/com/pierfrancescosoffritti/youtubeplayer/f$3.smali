.class Lcom/pierfrancescosoffritti/youtubeplayer/f$3;
.super Ljava/lang/Object;
.source "YouTubePlayerBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/f;->onPlaybackQualityChange(Ljava/lang/String;)V
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
    .line 53
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->b:Lcom/pierfrancescosoffritti/youtubeplayer/f;

    iput-object p2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->b:Lcom/pierfrancescosoffritti/youtubeplayer/f;

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

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;

    .line 57
    const-string v2, "small"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->b(I)V

    goto :goto_0

    .line 59
    :cond_1
    const-string v2, "medium"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->b(I)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v2, "large"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->b(I)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v2, "hd720"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->b(I)V

    goto :goto_0

    .line 65
    :cond_4
    const-string v2, "hd1080"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 66
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->b(I)V

    goto :goto_0

    .line 67
    :cond_5
    const-string v2, "highres"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->b(I)V

    goto :goto_0

    .line 69
    :cond_6
    const-string v2, "default"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->b(I)V

    goto :goto_0

    .line 71
    :cond_7
    return-void
.end method
