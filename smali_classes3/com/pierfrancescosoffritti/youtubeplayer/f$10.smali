.class Lcom/pierfrancescosoffritti/youtubeplayer/f$10;
.super Ljava/lang/Object;
.source "YouTubePlayerBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/f;->onVideoDuration(Ljava/lang/String;)V
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
    .line 167
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$10;->b:Lcom/pierfrancescosoffritti/youtubeplayer/f;

    iput-object p2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$10;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 171
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$10;->b:Lcom/pierfrancescosoffritti/youtubeplayer/f;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/f;->a(Lcom/pierfrancescosoffritti/youtubeplayer/f;)Lcom/pierfrancescosoffritti/youtubeplayer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;

    .line 172
    invoke-interface {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->b(F)V

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method
