.class Lcom/pierfrancescosoffritti/youtubeplayer/e$4;
.super Ljava/lang/Object;
.source "YouTubePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pierfrancescosoffritti/youtubeplayer/e;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/e;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e$4;->a:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/e$4;->a:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    const-string v1, "javascript:playVideo()"

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method
