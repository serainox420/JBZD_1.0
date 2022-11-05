.class public Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.super Landroid/widget/FrameLayout;
.source "PlaybackControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/SeekBar;

.field private final l:Ljava/lang/StringBuilder;

.field private final m:Ljava/util/Formatter;

.field private final n:Lcom/google/android/exoplayer2/n$b;

.field private o:Lcom/google/android/exoplayer2/d;

.field private p:Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;

.field private q:Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:J

.field private final x:Ljava/lang/Runnable;

.field private final y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/16 v2, 0x1388

    const/4 v3, 0x0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->x:Ljava/lang/Runnable;

    .line 229
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$3;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$3;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->y:Ljava/lang/Runnable;

    .line 247
    sget v0, Lcom/google/android/exoplayer2/R$layout;->exo_playback_control_view:I

    .line 248
    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->t:I

    .line 249
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->u:I

    .line 250
    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->v:I

    .line 251
    if-eqz p2, :cond_0

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 255
    :try_start_0
    sget v2, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView_rewind_increment:I

    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->t:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->t:I

    .line 256
    sget v2, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView_fastforward_increment:I

    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->u:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->u:I

    .line 258
    sget v2, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView_show_timeout:I

    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->v:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->v:I

    .line 259
    sget v2, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView_controller_layout_id:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 262
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/n$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/n$b;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n:Lcom/google/android/exoplayer2/n$b;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->l:Ljava/lang/StringBuilder;

    .line 267
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->l:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->m:Ljava/util/Formatter;

    .line 268
    new-instance v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    .line 269
    sget-object v1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->p:Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;

    .line 271
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 272
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setDescendantFocusability(I)V

    .line 274
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_duration:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->i:Landroid/widget/TextView;

    .line 275
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_position:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->j:Landroid/widget/TextView;

    .line 276
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_progress:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k:Landroid/widget/SeekBar;

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 281
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_play:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e:Landroid/view/View;

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_pause:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f:Landroid/view/View;

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    :cond_3
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_prev:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    :cond_4
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_next:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    :cond_5
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_rew:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :cond_6
    sget v0, Lcom/google/android/exoplayer2/R$id;->exo_ffwd:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g:Landroid/view/View;

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    :cond_7
    return-void

    .line 262
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(I)J
    .locals 4

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 583
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 584
    :goto_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->i()J

    move-result-wide v0

    goto :goto_0

    .line 584
    :cond_1
    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;I)J
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 13

    .prologue
    const-wide/16 v0, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const-wide/16 v8, 0x3c

    const/4 v10, 0x0

    .line 564
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    move-wide p1, v0

    .line 567
    :cond_0
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 568
    rem-long v4, v2, v8

    .line 569
    div-long v6, v2, v8

    rem-long/2addr v6, v8

    .line 570
    const-wide/16 v8, 0xe10

    div-long/2addr v2, v8

    .line 571
    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->l:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 572
    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->m:Ljava/util/Formatter;

    const-string v1, "%d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v12

    invoke-virtual {v0, v1, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_0
    return-object v0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->m:Ljava/util/Formatter;

    const-string v1, "%02d:%02d"

    new-array v2, v12, [Ljava/lang/Object;

    .line 573
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->p:Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;->a(Lcom/google/android/exoplayer2/d;IJ)Z

    move-result v0

    .line 635
    if-nez v0, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h()V

    .line 640
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 561
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h()V

    return-void
.end method

.method private a(ZLandroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 546
    if-nez p2, :cond_0

    .line 556
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 550
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 551
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Landroid/view/View;F)V

    .line 552
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 551
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_1

    .line 554
    :cond_2
    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->s:Z

    return p1
.end method

.method private b(J)I
    .locals 5

    .prologue
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-nez v0, :cond_1

    move-wide v0, v2

    .line 578
    :goto_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->i()J

    move-result-wide v0

    goto :goto_0

    .line 578
    :cond_2
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    div-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->y:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c(J)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 718
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x59

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private c(J)V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->h()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(IJ)V

    .line 631
    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/d;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 437
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->v:I

    if-lez v0, :cond_1

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->v:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->w:J

    .line 439
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->r:Z

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->y:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->v:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->w:J

    goto :goto_0
.end method

.method private e()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f()V

    .line 449
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g()V

    .line 450
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h()V

    .line 451
    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->s:Z

    return v0
.end method

.method private f()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->r:Z

    if-nez v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 459
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 460
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    or-int v5, v2, v3

    .line 461
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e:Landroid/view/View;

    if-eqz v0, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    move v3, v5

    .line 463
    :goto_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 464
    if-nez v0, :cond_6

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_5
    or-int/2addr v3, v1

    .line 465
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f:Landroid/view/View;

    if-nez v0, :cond_7

    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :cond_2
    if-eqz v3, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->i()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 458
    goto :goto_1

    :cond_4
    move v3, v2

    .line 460
    goto :goto_2

    :cond_5
    move v3, v2

    .line 461
    goto :goto_3

    :cond_6
    move v1, v2

    .line 464
    goto :goto_5

    :cond_7
    move v4, v2

    .line 465
    goto :goto_6

    :cond_8
    move v3, v2

    goto :goto_4
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d()V

    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->r:Z

    if-nez v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->g()Lcom/google/android/exoplayer2/n;

    move-result-object v0

    move-object v3, v0

    .line 477
    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 481
    :goto_2
    if-eqz v0, :cond_a

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->h()I

    move-result v5

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n:Lcom/google/android/exoplayer2/n$b;

    invoke-virtual {v3, v5, v0}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;)Lcom/google/android/exoplayer2/n$b;

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n:Lcom/google/android/exoplayer2/n$b;

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/n$b;->d:Z

    .line 485
    if-gtz v5, :cond_2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n:Lcom/google/android/exoplayer2/n$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/n$b;->e:Z

    if-nez v0, :cond_6

    :cond_2
    move v0, v2

    .line 486
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/n;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v5, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n:Lcom/google/android/exoplayer2/n$b;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/n$b;->e:Z

    if-eqz v3, :cond_7

    :cond_3
    move v3, v2

    .line 489
    :goto_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c:Landroid/view/View;

    invoke-direct {p0, v0, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(ZLandroid/view/View;)V

    .line 490
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(ZLandroid/view/View;)V

    .line 491
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->u:I

    if-lez v0, :cond_8

    if-eqz v4, :cond_8

    move v0, v2

    :goto_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(ZLandroid/view/View;)V

    .line 492
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->t:I

    if-lez v0, :cond_9

    if-eqz v4, :cond_9

    :goto_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(ZLandroid/view/View;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    .line 476
    :cond_4
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 477
    goto :goto_2

    :cond_6
    move v0, v1

    .line 485
    goto :goto_3

    :cond_7
    move v3, v1

    .line 486
    goto :goto_4

    :cond_8
    move v0, v1

    .line 491
    goto :goto_5

    :cond_9
    move v2, v1

    .line 492
    goto :goto_6

    :cond_a
    move v3, v1

    move v0, v1

    move v4, v1

    goto :goto_4
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f()V

    return-void
.end method

.method private h()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x3e8

    .line 499
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->r:Z

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-nez v0, :cond_7

    move-wide v0, v2

    .line 503
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-nez v4, :cond_8

    move-wide v4, v2

    .line 504
    :goto_2
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->i:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 505
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->s:Z

    if-nez v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->j:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    .line 512
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->s:Z

    if-nez v0, :cond_4

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k:Landroid/widget/SeekBar;

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 515
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-nez v0, :cond_9

    .line 516
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 519
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-nez v0, :cond_a

    move v0, v8

    .line 522
    :goto_4
    if-eq v0, v8, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/d;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 525
    rem-long v0, v4, v6

    sub-long v0, v6, v0

    .line 526
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 527
    add-long/2addr v0, v6

    .line 532
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 502
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->i()J

    move-result-wide v0

    goto :goto_1

    .line 503
    :cond_8
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/d;->j()J

    move-result-wide v4

    goto :goto_2

    .line 515
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->k()J

    move-result-wide v2

    goto :goto_3

    .line 521
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->a()I

    move-result v0

    goto :goto_4

    :cond_b
    move-wide v0, v6

    .line 530
    goto :goto_5
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 538
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 539
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 543
    :cond_0
    :goto_1
    return-void

    .line 537
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 540
    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method private j()V
    .locals 6

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->g()Lcom/google/android/exoplayer2/n;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/d;->h()I

    move-result v1

    .line 593
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n:Lcom/google/android/exoplayer2/n$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;)Lcom/google/android/exoplayer2/n$b;

    .line 594
    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->j()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n:Lcom/google/android/exoplayer2/n$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/n$b;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n:Lcom/google/android/exoplayer2/n$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/n$b;->d:Z

    if-nez v0, :cond_2

    .line 596
    :cond_1
    add-int/lit8 v0, v1, -0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(IJ)V

    goto :goto_0

    .line 598
    :cond_2
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c(J)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 603
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->g()Lcom/google/android/exoplayer2/n;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/d;->h()I

    move-result v1

    .line 608
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 609
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(IJ)V

    goto :goto_0

    .line 610
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n:Lcom/google/android/exoplayer2/n$b;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;Z)Lcom/google/android/exoplayer2/n$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/n$b;->e:Z

    if-eqz v0, :cond_0

    .line 611
    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(IJ)V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 616
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->t:I

    if-gtz v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->j()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->t:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c(J)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->j()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g:Landroid/view/View;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 623
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->u:I

    if-gtz v0, :cond_0

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/d;->j()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->u:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/d;->i()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c(J)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->m()V

    return-void
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->l()V

    return-void
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->q:Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->q:Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;->a(I)V

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e()V

    .line 407
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->i()V

    .line 410
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d()V

    .line 411
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 682
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 683
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 714
    :goto_0
    return v1

    .line 686
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 687
    sparse-switch v2, :sswitch_data_0

    .line 713
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a()V

    goto :goto_0

    .line 689
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->m()V

    goto :goto_1

    .line 692
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->l()V

    goto :goto_1

    .line 695
    :sswitch_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/d;->b()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/d;->a(Z)V

    goto :goto_1

    .line 698
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Z)V

    goto :goto_1

    .line 701
    :sswitch_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/d;->a(Z)V

    goto :goto_1

    .line 704
    :sswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k()V

    goto :goto_1

    .line 707
    :sswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->j()V

    goto :goto_1

    .line 687
    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_2
        0x57 -> :sswitch_5
        0x58 -> :sswitch_6
        0x59 -> :sswitch_1
        0x5a -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_4
    .end sparse-switch
.end method

.method public b()V
    .locals 2

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->q:Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->q:Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;->a(I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 424
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->w:J

    .line 426
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 668
    :goto_0
    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a()V

    .line 671
    :cond_1
    return v0

    .line 667
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/d;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    return-object v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->v:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 644
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->r:Z

    .line 646
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 647
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->w:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 648
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b()V

    .line 654
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e()V

    .line 655
    return-void

    .line 651
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 659
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->r:Z

    .line 661
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->x:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 662
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->y:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 663
    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0

    .prologue
    .line 370
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->u:I

    .line 371
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g()V

    .line 372
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/d;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-ne v0, p1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/d;->b(Lcom/google/android/exoplayer2/d$a;)V

    .line 326
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o:Lcom/google/android/exoplayer2/d;

    .line 327
    if-eqz p1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b:Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d;->a(Lcom/google/android/exoplayer2/d$a;)V

    .line 330
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e()V

    goto :goto_0
.end method

.method public setRewindIncrementMs(I)V
    .locals 0

    .prologue
    .line 359
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->t:I

    .line 360
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g()V

    .line 361
    return-void
.end method

.method public setSeekDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;)V
    .locals 0

    .prologue
    .line 349
    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->p:Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;

    .line 350
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .prologue
    .line 393
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->v:I

    .line 394
    return-void
.end method

.method public setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->q:Lcom/google/android/exoplayer2/ui/PlaybackControlView$c;

    .line 340
    return-void
.end method
