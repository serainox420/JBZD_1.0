.class public final Lcom/google/android/exoplayer2/text/e/e$a;
.super Ljava/lang/Object;
.source "WebvttCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Landroid/text/SpannableStringBuilder;

.field private d:Landroid/text/Layout$Alignment;

.field private e:F

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/e/e$a;->a()V

    .line 81
    return-void
.end method

.method private c()Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/e/e$a;->d:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    .line 158
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/e/e$a;->i:I

    .line 176
    :goto_0
    return-object p0

    .line 160
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/text/e/e$1;->a:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->d:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 171
    const-string v0, "WebvttCueBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/e/e$a;->d:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput v3, p0, Lcom/google/android/exoplayer2/text/e/e$a;->i:I

    goto :goto_0

    .line 162
    :pswitch_0
    iput v3, p0, Lcom/google/android/exoplayer2/text/e/e$a;->i:I

    goto :goto_0

    .line 165
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/text/e/e$a;->i:I

    goto :goto_0

    .line 168
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/text/e/e$a;->i:I

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(F)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->e:F

    .line 128
    return-object p0
.end method

.method public a(I)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->f:I

    .line 133
    return-object p0
.end method

.method public a(J)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->a:J

    .line 108
    return-object p0
.end method

.method public a(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->d:Landroid/text/Layout$Alignment;

    .line 123
    return-object p0
.end method

.method public a(Landroid/text/SpannableStringBuilder;)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->c:Landroid/text/SpannableStringBuilder;

    .line 118
    return-object p0
.end method

.method public a()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    const/4 v0, 0x1

    .line 84
    iput-wide v4, p0, Lcom/google/android/exoplayer2/text/e/e$a;->a:J

    .line 85
    iput-wide v4, p0, Lcom/google/android/exoplayer2/text/e/e$a;->b:J

    .line 86
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/e/e$a;->c:Landroid/text/SpannableStringBuilder;

    .line 87
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/e/e$a;->d:Landroid/text/Layout$Alignment;

    .line 88
    iput v0, p0, Lcom/google/android/exoplayer2/text/e/e$a;->e:F

    .line 89
    iput v1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->f:I

    .line 90
    iput v1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->g:I

    .line 91
    iput v0, p0, Lcom/google/android/exoplayer2/text/e/e$a;->h:F

    .line 92
    iput v1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->i:I

    .line 93
    iput v0, p0, Lcom/google/android/exoplayer2/text/e/e$a;->j:F

    .line 94
    return-void
.end method

.method public b(F)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->h:F

    .line 143
    return-object p0
.end method

.method public b(I)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->g:I

    .line 138
    return-object p0
.end method

.method public b(J)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 1

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->b:J

    .line 113
    return-object p0
.end method

.method public b()Lcom/google/android/exoplayer2/text/e/e;
    .locals 14

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/exoplayer2/text/e/e$a;->h:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/text/e/e$a;->i:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/e/e$a;->c()Lcom/google/android/exoplayer2/text/e/e$a;

    .line 102
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/text/e/e;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/e/e$a;->a:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/e/e$a;->b:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/e/e$a;->c:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/text/e/e$a;->d:Landroid/text/Layout$Alignment;

    iget v8, p0, Lcom/google/android/exoplayer2/text/e/e$a;->e:F

    iget v9, p0, Lcom/google/android/exoplayer2/text/e/e$a;->f:I

    iget v10, p0, Lcom/google/android/exoplayer2/text/e/e$a;->g:I

    iget v11, p0, Lcom/google/android/exoplayer2/text/e/e$a;->h:F

    iget v12, p0, Lcom/google/android/exoplayer2/text/e/e$a;->i:I

    iget v13, p0, Lcom/google/android/exoplayer2/text/e/e$a;->j:F

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer2/text/e/e;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v1
.end method

.method public c(F)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->j:F

    .line 153
    return-object p0
.end method

.method public c(I)Lcom/google/android/exoplayer2/text/e/e$a;
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/google/android/exoplayer2/text/e/e$a;->i:I

    .line 148
    return-object p0
.end method
