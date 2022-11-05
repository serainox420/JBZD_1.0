.class Lcom/pierfrancescosoffritti/youtubeplayer/e$3;
.super Ljava/lang/Object;
.source "YouTubePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/e;->b(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:F

.field final synthetic c:Lcom/pierfrancescosoffritti/youtubeplayer/e;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e$3;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    iput-object p2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e$3;->a:Ljava/lang/String;

    iput p3, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e$3;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e$3;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:cueVideo(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e$3;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method
