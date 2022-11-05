.class public Lpl/jbzd/b/b;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lpl/jbzd/b/a;

.field private b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Lpl/jbzd/b/b$a;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v4, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    .line 33
    iput-object v4, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    .line 34
    iput-object v4, p0, Lpl/jbzd/b/b;->c:Landroid/view/View$OnClickListener;

    .line 35
    iput-object v4, p0, Lpl/jbzd/b/b;->d:Lpl/jbzd/b/b$a;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/b/b;->e:I

    .line 41
    :try_start_0
    new-instance v0, Lpl/jbzd/b/a;

    invoke-direct {v0, p1}, Lpl/jbzd/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    :try_start_1
    new-instance v0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-direct {v0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    .line 48
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->d()V

    .line 55
    iput-object v4, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 264
    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 247
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 248
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    const v1, 0x106000d

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lpl/jbzd/core/a/a;->b(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 250
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 252
    iget-object v1, p0, Lpl/jbzd/b/b;->c:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lpl/jbzd/b/b;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lpl/jbzd/b/b;->e:I

    .line 100
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0}, Lpl/jbzd/b/a;->a()V

    .line 103
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0, v1}, Lpl/jbzd/b/a;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-direct {p0, v0}, Lpl/jbzd/b/b;->a(Landroid/view/View;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g()V

    .line 110
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-direct {p0, v0}, Lpl/jbzd/b/b;->a(Landroid/view/View;)V

    .line 113
    :cond_1
    return-void
.end method

.method public a(F)V
    .locals 4

    .prologue
    .line 151
    iget v0, p0, Lpl/jbzd/b/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v0

    float-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/m;->a(J)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lpl/jbzd/b/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->a(I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lpl/jbzd/b/b;->e()V

    .line 121
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;)V
    .locals 3

    .prologue
    .line 62
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lpl/jbzd/b/b;->a()V

    .line 66
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    invoke-direct {p0, p2}, Lpl/jbzd/b/b;->a(Landroid/view/ViewGroup;)V

    .line 72
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0, p3}, Lpl/jbzd/b/a;->setOnSimpleVideoListener(Lpl/jbzd/b/b$a;)V

    .line 73
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0, p1}, Lpl/jbzd/b/a;->a(Landroid/net/Uri;)V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lpl/jbzd/b/b;->e:I

    .line 76
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 238
    iput-object p2, p0, Lpl/jbzd/b/b;->c:Landroid/view/View$OnClickListener;

    .line 240
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/ViewGroup;Lpl/jbzd/b/b$a;)V
    .locals 3

    .prologue
    .line 80
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lpl/jbzd/b/b;->a()V

    .line 84
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    invoke-direct {p0, p2}, Lpl/jbzd/b/b;->a(Landroid/view/ViewGroup;)V

    .line 90
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0, p3}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->setOnSimpleListener(Lpl/jbzd/b/b$a;)V

    .line 91
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->a(Ljava/lang/String;F)V

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lpl/jbzd/b/b;->e:I

    .line 94
    :cond_0
    return-void
.end method

.method public b()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    iget v1, p0, Lpl/jbzd/b/b;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 140
    iget-object v1, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v1}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m;->j()J

    move-result-wide v0

    long-to-float v0, v0

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    iget v1, p0, Lpl/jbzd/b/b;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 143
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->getCurrentSecond()F

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0}, Lpl/jbzd/b/a;->b()V

    .line 132
    :cond_0
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->d()V

    .line 135
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    iget v2, p0, Lpl/jbzd/b/b;->e:I

    if-ne v2, v0, :cond_1

    .line 168
    iget-object v2, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v2}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v2}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0

    .line 170
    :cond_1
    iget v0, p0, Lpl/jbzd/b/b;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 171
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->h()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 179
    iget v1, p0, Lpl/jbzd/b/b;->e:I

    if-ne v1, v0, :cond_2

    .line 181
    iget-object v1, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v1}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v1}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v1

    iget-object v2, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v2}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/m;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/m;->a(Z)V

    .line 197
    :cond_0
    :goto_1
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_2
    iget v0, p0, Lpl/jbzd/b/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->f()V

    goto :goto_1

    .line 193
    :cond_3
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->e()V

    goto :goto_1
.end method

.method public e()V
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lpl/jbzd/b/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lpl/jbzd/b/b;->a:Lpl/jbzd/b/a;

    invoke-virtual {v0}, Lpl/jbzd/b/a;->getPlayer()Lcom/google/android/exoplayer2/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m;->a(Z)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v0, p0, Lpl/jbzd/b/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lpl/jbzd/b/b;->b:Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->f()V

    goto :goto_0
.end method
