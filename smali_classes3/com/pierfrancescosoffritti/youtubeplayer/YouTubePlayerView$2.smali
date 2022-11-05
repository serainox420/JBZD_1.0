.class Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$2;
.super Lcom/pierfrancescosoffritti/youtubeplayer/a;
.source "YouTubePlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->a(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pierfrancescosoffritti/youtubeplayer/e$a;

.field final synthetic b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Lcom/pierfrancescosoffritti/youtubeplayer/e$a;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$2;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    iput-object p2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$2;->a:Lcom/pierfrancescosoffritti/youtubeplayer/e$a;

    invoke-direct {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 235
    const-string v0, "YouTubePlayerView"

    const-string v1, "Network available. Initializing player."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$2;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->b(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;)Lcom/pierfrancescosoffritti/youtubeplayer/e;

    move-result-object v0

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$2;->a:Lcom/pierfrancescosoffritti/youtubeplayer/e$a;

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->a(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;)V

    .line 237
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$2;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Z)Z

    .line 238
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$2;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->a(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Lcom/pierfrancescosoffritti/youtubeplayer/a;)Lcom/pierfrancescosoffritti/youtubeplayer/a;

    .line 239
    return-void
.end method
