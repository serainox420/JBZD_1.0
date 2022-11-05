.class public Lcom/inmobi/re/controller/util/AVPlayer;
.super Landroid/widget/VideoView;
.source "AVPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/re/controller/util/AVPlayer$a;,
        Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    }
.end annotation


# static fields
.field public static final MINIMAL_LAYOUT_PARAM:I = 0x1

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:I

.field private static k:Ljava/lang/String;


# instance fields
.field private a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

.field private b:Lcom/inmobi/re/controller/util/AVPlayerListener;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/widget/RelativeLayout;

.field private l:Z

.field private m:Z

.field private n:Lcom/inmobi/re/container/IMWebView;

.field private o:Landroid/graphics/Bitmap;

.field private p:I

.field public pseudoPause:Z

.field private q:I

.field private r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

.field private s:Landroid/media/MediaPlayer;

.field private t:Z

.field private u:Landroid/view/ViewGroup;

.field private v:Lcom/inmobi/re/controller/JSController$Dimensions;

.field private w:Lcom/inmobi/re/controller/util/AVPlayer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "play"

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->f:Ljava/lang/String;

    .line 60
    const-string v0, "pause"

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->g:Ljava/lang/String;

    .line 61
    const-string v0, "ended"

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->h:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    sput v0, Lcom/inmobi/re/controller/util/AVPlayer;->i:I

    .line 64
    const/4 v0, 0x2

    sput v0, Lcom/inmobi/re/controller/util/AVPlayer;->j:I

    .line 69
    const-string v0, "Loading. Please Wait.."

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    .line 54
    iput v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    .line 76
    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->l:Z

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->m:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    .line 581
    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer$a;

    invoke-direct {v0, p0}, Lcom/inmobi/re/controller/util/AVPlayer$a;-><init>(Lcom/inmobi/re/controller/util/AVPlayer;)V

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->w:Lcom/inmobi/re/controller/util/AVPlayer$a;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setZOrderOnTop(Z)V

    .line 123
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    .line 125
    invoke-virtual {p0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setDrawingCacheEnabled(Z)V

    .line 126
    iput-object p2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    .line 127
    invoke-virtual {p0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setFocusable(Z)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setFocusableInTouchMode(Z)V

    .line 130
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/controller/util/AVPlayer;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    return p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 204
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 206
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_0

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v1, v0

    invoke-static {v4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->byteToHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    aget-byte v3, v1, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 216
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private a()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->showControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setMediaController(Landroid/widget/MediaController;)V

    .line 171
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 173
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireMediaErrorEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 496
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireMediaTimeUpdateEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 509
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/controller/util/AVPlayer;II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/controller/util/AVPlayer;->a(II)V

    return-void
.end method

.method private a(ZI)V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireMediaCloseEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p0}, Lcom/inmobi/re/container/IMWebView;->mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V

    .line 520
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/controller/util/AVPlayer;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inmobi/re/controller/util/AVPlayer;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/re/controller/util/AVPlayer;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    return p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    .line 181
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->e()V

    .line 183
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setVideoPath(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->a()V

    .line 187
    invoke-virtual {p0, p0}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 188
    invoke-virtual {p0, p0}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 189
    invoke-virtual {p0, p0}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 191
    return-void
.end method

.method private b(I)V
    .locals 6

    .prologue
    .line 636
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    .line 640
    :cond_0
    iput p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    .line 641
    const/high16 v0, 0x3f800000    # 1.0f

    rsub-int/lit8 v1, p1, 0x65

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x4059400000000000L    # 101.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v1, v2

    sub-float/2addr v0, v1

    .line 643
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->g()V

    .line 648
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 645
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Player has been released. Cannot set the volume."

    const-string v2, "setVolume"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireMediaTrackingEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 487
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->SHOWING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_2

    .line 224
    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->m:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->COMPLETED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    :goto_0
    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    .line 231
    :cond_0
    :goto_1
    return-void

    .line 224
    :cond_1
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->mute()V

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 337
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 341
    if-eqz v0, :cond_1

    .line 342
    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 344
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackgroundColor(I)V

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMAVPlayer: unable to remove view"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 399
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    .line 400
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 404
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 405
    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 410
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 412
    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 414
    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 423
    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 425
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidview.fireMediaVolumeChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 533
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->w:Lcom/inmobi/re/controller/util/AVPlayer$a;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer$a;->sendEmptyMessage(I)Z

    .line 538
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->w:Lcom/inmobi/re/controller/util/AVPlayer$a;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer$a;->removeMessages(I)V

    .line 542
    return-void
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 811
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAutoPlay()Z
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-boolean v0, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->autoPlay:Z

    .line 838
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackGroundLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayDimensions()Lcom/inmobi/re/controller/JSController$Dimensions;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->v:Lcom/inmobi/re/controller/JSController$Dimensions;

    return-object v0
.end method

.method public getPlayProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    return-object v0
.end method

.method public getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    return-object v0
.end method

.method public getPropertyID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 712
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 714
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 716
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMAVPlayer: unable to hide video"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInlineVideo()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaMuted()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->l:Z

    return v0
.end method

.method public mute()V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    if-nez v0, :cond_0

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->g()V

    .line 663
    :cond_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMAVPlayer: unable to set volume (mute)"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 252
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "AVPlayer-> onCompletion"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->COMPLETED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->m:Z

    .line 257
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->b(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->i()V

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->doLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    .line 268
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    .line 270
    :cond_0
    monitor-exit p0

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    :catch_0
    move-exception v0

    .line 278
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "IMAvplayer onCompletion exception "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 271
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->exitOnComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVPlayer-> Player error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->f()V

    .line 288
    invoke-virtual {p0, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 290
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/re/controller/util/AVPlayerListener;->onError(Lcom/inmobi/re/controller/util/AVPlayer;)V

    .line 294
    :cond_0
    sget v0, Lcom/inmobi/re/controller/util/AVPlayer;->i:I

    .line 295
    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    .line 296
    sget v0, Lcom/inmobi/re/controller/util/AVPlayer;->j:I

    .line 298
    :cond_1
    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->a(I)V

    .line 300
    return v3
.end method

.method public onIMVisibilityChanged(Z)V
    .locals 3

    .prologue
    .line 816
    const-string v0, "[InMobi]-[RE]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVPlayer-> onIMVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    if-nez v0, :cond_0

    .line 819
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 821
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    if-eqz v0, :cond_1

    .line 822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    .line 823
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->play()V

    .line 825
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_2

    .line 826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    .line 827
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->pause()V

    .line 829
    :cond_2
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 305
    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    .line 306
    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-super {p0, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 312
    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "AVPlayer-> onPrepared"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->f()V

    .line 323
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/re/controller/util/AVPlayerListener;->onPrepared(Lcom/inmobi/re/controller/util/AVPlayer;)V

    .line 326
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->l:Z

    .line 327
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->c()V

    .line 328
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMAVPlayer: unable to set volume"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 832
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->onIMVisibilityChanged(Z)V

    .line 833
    return-void

    .line 832
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 797
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    .line 798
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 799
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->onIMVisibilityChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :cond_0
    :goto_1
    return-void

    .line 799
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMAVPlayer: onWindowVisibilityChanged: Something went wrong"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 478
    :goto_0
    monitor-exit p0

    return-void

    .line 470
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 472
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    .line 474
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->i()V

    .line 476
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "AVPlayer-> pause"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public play()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->b()V

    .line 238
    return-void
.end method

.method public releasePlayer(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/controller/util/AVPlayer$1;

    invoke-direct {v1, p0}, Lcom/inmobi/re/controller/util/AVPlayer$1;-><init>(Lcom/inmobi/re/controller/util/AVPlayer;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    :cond_0
    monitor-enter p0

    .line 370
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    monitor-exit p0

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    .line 377
    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->a(ZI)V

    .line 383
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->i()V

    .line 384
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->stopPlayback()V

    .line 385
    invoke-super {p0, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 386
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->d()V

    .line 388
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/re/controller/util/AVPlayerListener;->onComplete(Lcom/inmobi/re/controller/util/AVPlayer;)V

    .line 390
    iput-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 377
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1
.end method

.method public seekPlayer(I)V
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getDuration()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 737
    invoke-virtual {p0, p1}, Lcom/inmobi/re/controller/util/AVPlayer;->seekTo(I)V

    .line 739
    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iput-boolean p1, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->autoPlay:Z

    .line 843
    :cond_0
    return-void
.end method

.method public setBackGroundLayout(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    .line 749
    return-void
.end method

.method public setListener(Lcom/inmobi/re/controller/util/AVPlayerListener;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    .line 248
    return-void
.end method

.method public setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 141
    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    .line 142
    iput-object p2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    .line 144
    iget-boolean v0, p1, Lcom/inmobi/re/controller/JSController$PlayerProperties;->audioMuted:Z

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getVideoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "IMAVPlayer: unable to get video bitmap"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlayDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->v:Lcom/inmobi/re/controller/JSController$Dimensions;

    .line 786
    return-void
.end method

.method public setVolume(I)V
    .locals 2

    .prologue
    .line 692
    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v0, v1, :cond_0

    .line 693
    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/util/AVPlayer;->b(I)V

    .line 694
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->SHOWING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setVisibility(I)V

    .line 727
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/controller/util/AVPlayer$2;

    invoke-direct {v1, p0}, Lcom/inmobi/re/controller/util/AVPlayer$2;-><init>(Lcom/inmobi/re/controller/util/AVPlayer;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    .line 461
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 446
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->seekPlayer(I)V

    .line 447
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 449
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->m:Z

    .line 452
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->h()V

    .line 454
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "AVPlayer-> start playing"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->l:Z

    if-eqz v0, :cond_1

    .line 458
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unMute()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    if-eqz v0, :cond_0

    .line 670
    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->b(I)V

    .line 672
    :cond_0
    return-void
.end method
