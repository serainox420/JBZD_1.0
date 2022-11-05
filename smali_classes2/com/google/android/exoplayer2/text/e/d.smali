.class final Lcom/google/android/exoplayer2/text/e/d;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/e/d;->a()V

    .line 82
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-ne p0, v0, :cond_2

    :cond_0
    move v0, p0

    .line 301
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int v0, p0, p3

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/e/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/e/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/e/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/e/d;->d:Ljava/lang/String;

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/e/d;->a:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/text/e/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/e/d;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v2, p2, v3}, Lcom/google/android/exoplayer2/text/e/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/e/d;->d:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v1, v2, p4, v3}, Lcom/google/android/exoplayer2/text/e/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 146
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/e/d;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/e/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 151
    goto :goto_0
.end method

.method public a(I)Lcom/google/android/exoplayer2/text/e/d;
    .locals 1

    .prologue
    .line 212
    iput p1, p0, Lcom/google/android/exoplayer2/text/e/d;->f:I

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/e/d;->g:Z

    .line 214
    return-object p0
.end method

.method public a(Z)Lcom/google/android/exoplayer2/text/e/d;
    .locals 1

    .prologue
    .line 182
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/text/e/d;->k:I

    .line 183
    return-object p0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/d;->a:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/d;->b:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/d;->c:Ljava/util/List;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/d;->d:Ljava/lang/String;

    .line 89
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/e/d;->e:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/e/d;->g:Z

    .line 91
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/text/e/d;->i:Z

    .line 92
    iput v1, p0, Lcom/google/android/exoplayer2/text/e/d;->j:I

    .line 93
    iput v1, p0, Lcom/google/android/exoplayer2/text/e/d;->k:I

    .line 94
    iput v1, p0, Lcom/google/android/exoplayer2/text/e/d;->l:I

    .line 95
    iput v1, p0, Lcom/google/android/exoplayer2/text/e/d;->m:I

    .line 96
    iput v1, p0, Lcom/google/android/exoplayer2/text/e/d;->n:I

    .line 97
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/e/d;->p:Landroid/text/Layout$Alignment;

    .line 98
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/e/d;->a:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/d;->c:Ljava/util/List;

    .line 110
    return-void
.end method

.method public b()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 161
    iget v3, p0, Lcom/google/android/exoplayer2/text/e/d;->l:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lcom/google/android/exoplayer2/text/e/d;->m:I

    if-ne v3, v0, :cond_0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/e/d;->l:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer2/text/e/d;->m:I

    if-ne v3, v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public b(I)Lcom/google/android/exoplayer2/text/e/d;
    .locals 1

    .prologue
    .line 229
    iput p1, p0, Lcom/google/android/exoplayer2/text/e/d;->h:I

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/e/d;->i:Z

    .line 231
    return-object p0
.end method

.method public b(Z)Lcom/google/android/exoplayer2/text/e/d;
    .locals 1

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/text/e/d;->l:I

    .line 187
    return-object p0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/e/d;->b:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public c(Z)Lcom/google/android/exoplayer2/text/e/d;
    .locals 1

    .prologue
    .line 191
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/text/e/d;->m:I

    .line 192
    return-object p0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/e/d;->d:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lcom/google/android/exoplayer2/text/e/d;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/e/d;
    .locals 1

    .prologue
    .line 200
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/e/d;->e:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 178
    iget v1, p0, Lcom/google/android/exoplayer2/text/e/d;->k:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/e/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/e/d;->g:Z

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/e/d;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/e/d;->g:Z

    return v0
.end method

.method public h()I
    .locals 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/e/d;->i:Z

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/e/d;->h:I

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/e/d;->i:Z

    return v0
.end method

.method public j()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/e/d;->p:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/google/android/exoplayer2/text/e/d;->n:I

    return v0
.end method

.method public l()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/google/android/exoplayer2/text/e/d;->o:F

    return v0
.end method
