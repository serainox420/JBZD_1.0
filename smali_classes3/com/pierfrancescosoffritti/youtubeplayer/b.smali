.class public Lcom/pierfrancescosoffritti/youtubeplayer/b;
.super Ljava/lang/Object;
.source "PlaybackResumer.java"

# interfaces
.implements Lcom/pierfrancescosoffritti/youtubeplayer/e$a;


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:F

.field private e:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;


# direct methods
.method public constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->a:Z

    .line 6
    const/4 v0, -0x1

    iput v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->b:I

    .line 14
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->e:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 18
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->b:I

    if-ne v0, v1, :cond_1

    .line 19
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->e:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->c:Ljava/lang/String;

    iget v2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->d:F

    invoke-virtual {v0, v1, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->a(Ljava/lang/String;F)V

    .line 23
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->b:I

    .line 24
    return-void

    .line 20
    :cond_1
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->b:I

    if-ne v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->e:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->c:Ljava/lang/String;

    iget v2, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->d:F

    invoke-virtual {v0, v1, v2}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->b(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public a(D)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->d:F

    .line 72
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->a:Z

    goto :goto_0

    .line 38
    :pswitch_1
    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->a:Z

    goto :goto_0

    .line 41
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->a:Z

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 61
    iput p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->b:I

    .line 62
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/b;->c:Ljava/lang/String;

    .line 92
    return-void
.end method
