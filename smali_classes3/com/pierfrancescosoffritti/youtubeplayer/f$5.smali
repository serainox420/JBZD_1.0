.class Lcom/pierfrancescosoffritti/youtubeplayer/f$5;
.super Ljava/lang/Object;
.source "YouTubePlayerBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/f;->onError(Ljava/lang/String;)V
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
    .line 94
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;->b:Lcom/pierfrancescosoffritti/youtubeplayer/f;

    iput-object p2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 97
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;->b:Lcom/pierfrancescosoffritti/youtubeplayer/f;

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

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;

    .line 98
    const-string v2, "2"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->c(I)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v2, "5"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->c(I)V

    goto :goto_0

    .line 102
    :cond_2
    const-string v2, "100"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->c(I)V

    goto :goto_0

    .line 104
    :cond_3
    const-string v2, "101"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    invoke-interface {v0, v4}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->c(I)V

    goto :goto_0

    .line 106
    :cond_4
    const-string v2, "150"

    iget-object v3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$5;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v0, v4}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->c(I)V

    goto :goto_0

    .line 109
    :cond_5
    return-void
.end method
