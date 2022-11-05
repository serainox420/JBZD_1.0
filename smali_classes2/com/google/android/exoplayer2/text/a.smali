.class public final Lcom/google/android/exoplayer2/text/a;
.super Ljava/lang/Object;
.source "CaptionStyleCompat.java"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/text/a;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 69
    new-instance v0, Lcom/google/android/exoplayer2/text/a;

    const/high16 v2, -0x1000000

    const/4 v6, 0x0

    move v4, v3

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v0, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/google/android/exoplayer2/text/a;->b:I

    .line 138
    iput p2, p0, Lcom/google/android/exoplayer2/text/a;->c:I

    .line 139
    iput p3, p0, Lcom/google/android/exoplayer2/text/a;->d:I

    .line 140
    iput p4, p0, Lcom/google/android/exoplayer2/text/a;->e:I

    .line 141
    iput p5, p0, Lcom/google/android/exoplayer2/text/a;->f:I

    .line 142
    iput-object p6, p0, Lcom/google/android/exoplayer2/text/a;->g:Landroid/graphics/Typeface;

    .line 143
    return-void
.end method

.method public static a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/a;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 118
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 119
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/a;->c(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/a;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/a;->b(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/a;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/a;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/exoplayer2/text/a;

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    const/4 v3, 0x0

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 151
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v0
.end method

.method private static c(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/a;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/google/android/exoplayer2/text/a;

    .line 159
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 160
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 161
    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 162
    :goto_2
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 163
    :goto_3
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 164
    :goto_4
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/a;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v0

    .line 159
    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    iget v1, v1, Lcom/google/android/exoplayer2/text/a;->b:I

    goto :goto_0

    .line 160
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    iget v2, v2, Lcom/google/android/exoplayer2/text/a;->c:I

    goto :goto_1

    .line 161
    :cond_2
    sget-object v3, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    iget v3, v3, Lcom/google/android/exoplayer2/text/a;->d:I

    goto :goto_2

    .line 162
    :cond_3
    sget-object v4, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    iget v4, v4, Lcom/google/android/exoplayer2/text/a;->e:I

    goto :goto_3

    .line 163
    :cond_4
    sget-object v5, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    iget v5, v5, Lcom/google/android/exoplayer2/text/a;->f:I

    goto :goto_4
.end method
