.class Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;
.super Landroid/widget/ImageView;
.source "VASTVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageButton"
.end annotation


# instance fields
.field a:Ljava/lang/Integer;

.field b:Lcom/millennialmedia/internal/video/VASTParser$Button;

.field final synthetic c:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$Button;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 139
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 133
    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->a:Ljava/lang/Integer;

    .line 134
    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->b:Lcom/millennialmedia/internal/video/VASTParser$Button;

    .line 141
    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->b:Lcom/millennialmedia/internal/video/VASTParser$Button;

    .line 143
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->setVisibility(I)V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->b()V

    .line 149
    invoke-virtual {p0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->b:Lcom/millennialmedia/internal/video/VASTParser$Button;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Button;->offset:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->a:Ljava/lang/Integer;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 166
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 205
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->b:Lcom/millennialmedia/internal/video/VASTParser$Button;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->buttonClicks:Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

    .line 206
    if-eqz v0, :cond_1

    .line 208
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    .line 212
    :cond_0
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickTrackingUrls:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 213
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$3;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$3;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 225
    :cond_1
    return-void
.end method
