.class Lcom/pierfrancescosoffritti/youtubeplayer/f$6;
.super Ljava/lang/Object;
.source "YouTubePlayerBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/f;->onApiChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pierfrancescosoffritti/youtubeplayer/f;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/f;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$6;->a:Lcom/pierfrancescosoffritti/youtubeplayer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/f$6;->a:Lcom/pierfrancescosoffritti/youtubeplayer/f;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/f;->a(Lcom/pierfrancescosoffritti/youtubeplayer/f;)Lcom/pierfrancescosoffritti/youtubeplayer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;

    .line 119
    invoke-interface {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e$a;->c()V

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method
