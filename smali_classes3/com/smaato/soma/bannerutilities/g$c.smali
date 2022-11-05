.class Lcom/smaato/soma/bannerutilities/g$c;
.super Ljava/lang/Object;
.source "VideoChrome.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/bannerutilities/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/g;

.field private b:Landroid/widget/VideoView;

.field private c:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$c;->a:Lcom/smaato/soma/bannerutilities/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    .line 106
    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->c:Landroid/widget/FrameLayout;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/VideoRootViewNotFoundException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$c$1;-><init>(Lcom/smaato/soma/bannerutilities/g$c;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 118
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    throw v0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    new-instance v1, Lcom/smaato/soma/exception/VideoRootViewNotFoundException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/VideoRootViewNotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/smaato/soma/bannerutilities/g$c;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in external browser."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingVideoFailed;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$c$2;-><init>(Lcom/smaato/soma/bannerutilities/g$c;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 143
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "VideoSubView"

    const-string v2, "closeVideo"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 147
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 149
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :cond_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    throw v0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    new-instance v1, Lcom/smaato/soma/exception/ClosingVideoFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/ClosingVideoFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StartingVideoFailedException;
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$c$3;-><init>(Lcom/smaato/soma/bannerutilities/g$c;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 171
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$c;->a:Lcom/smaato/soma/bannerutilities/g;

    invoke-static {v1}, Lcom/smaato/soma/bannerutilities/g;->a(Lcom/smaato/soma/bannerutilities/g;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    .line 172
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/g$c;->a(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->c:Landroid/widget/FrameLayout;

    .line 173
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 175
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 176
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 177
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/smaato/soma/bannerutilities/g$c$4;

    invoke-direct {v1, p0}, Lcom/smaato/soma/bannerutilities/g$c$4;-><init>(Lcom/smaato/soma/bannerutilities/g$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 201
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/smaato/soma/bannerutilities/g$c$5;

    invoke-direct {v1, p0}, Lcom/smaato/soma/bannerutilities/g$c$5;-><init>(Lcom/smaato/soma/bannerutilities/g$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 213
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c$6;

    invoke-direct {v0, p0, p3}, Lcom/smaato/soma/bannerutilities/g$c$6;-><init>(Lcom/smaato/soma/bannerutilities/g$c;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    new-instance v1, Lcom/smaato/soma/bannerutilities/g$c$7;

    invoke-direct {v1, p0, p3}, Lcom/smaato/soma/bannerutilities/g$c$7;-><init>(Lcom/smaato/soma/bannerutilities/g$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    throw v0

    .line 257
    :catch_1
    move-exception v0

    .line 258
    new-instance v1, Lcom/smaato/soma/exception/StartingVideoFailedException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/StartingVideoFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c$9;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$c$9;-><init>(Lcom/smaato/soma/bannerutilities/g$c;)V

    .line 287
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$c$9;->c()Ljava/lang/Object;

    .line 288
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/g$c$8;-><init>(Lcom/smaato/soma/bannerutilities/g$c;)V

    .line 274
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$c$8;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 268
    return v0
.end method
