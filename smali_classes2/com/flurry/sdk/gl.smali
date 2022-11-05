.class public Lcom/flurry/sdk/gl;
.super Lcom/flurry/sdk/gm;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:I

.field private g:Z

.field private h:F

.field private i:F

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/gl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gl;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gm;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 28
    iput v2, p0, Lcom/flurry/sdk/gl;->f:I

    .line 29
    iput-boolean v2, p0, Lcom/flurry/sdk/gl;->g:Z

    .line 30
    iput v0, p0, Lcom/flurry/sdk/gl;->h:F

    .line 31
    iput v0, p0, Lcom/flurry/sdk/gl;->i:F

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    iget-object v0, p0, Lcom/flurry/sdk/gl;->a:Lcom/flurry/sdk/gu;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/flurry/sdk/gu;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/gu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->a:Lcom/flurry/sdk/gu;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gl;->a:Lcom/flurry/sdk/gu;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/flurry/sdk/gl;->a:Lcom/flurry/sdk/gu;

    .line 1071
    iput-object p0, v0, Lcom/flurry/sdk/gu;->a:Lcom/flurry/sdk/gu$a;

    .line 47
    :cond_1
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 2078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 47
    iget-boolean v0, v0, Lcom/flurry/sdk/cs;->t:Z

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gl;->setAutoPlay(Z)V

    .line 50
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 3063
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->c()Lcom/flurry/sdk/fr;

    move-result-object v0

    .line 3064
    if-eqz v0, :cond_3

    .line 3065
    invoke-virtual {v0}, Lcom/flurry/sdk/fr;->a()Ljava/lang/String;

    move-result-object v0

    .line 3066
    invoke-static {v0}, Lcom/flurry/sdk/mc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gl;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gl;->setVideoUri(Landroid/net/Uri;)V

    .line 54
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 3072
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->c()Lcom/flurry/sdk/fr;

    move-result-object v0

    .line 3073
    if-eqz v0, :cond_2

    .line 3074
    invoke-virtual {v0}, Lcom/flurry/sdk/fr;->b()Ljava/lang/String;

    move-result-object v0

    .line 3075
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3076
    invoke-static {v0}, Lcom/flurry/sdk/mc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/flurry/sdk/gl;->g:Z

    .line 56
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 4078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 5058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 56
    iget v0, v0, Lcom/flurry/sdk/cs;->A:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/flurry/sdk/gl;->h:F

    .line 59
    invoke-interface {p2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 6078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 7058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 59
    iget v0, v0, Lcom/flurry/sdk/cs;->B:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/flurry/sdk/gl;->i:F

    .line 60
    return-void

    :cond_3
    move-object v0, v1

    .line 3068
    goto :goto_0

    :cond_4
    move v0, v2

    .line 55
    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/flurry/sdk/gm;->a(I)V

    .line 177
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Showing progress bar again. Cant play video as its not prepared yet."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->showProgressDialog()V

    .line 181
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video prepared onVideoPrepared."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public final a(Ljava/lang/String;FF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;FF)V

    .line 96
    const v0, 0x453b8000    # 3000.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 97
    iget-boolean v0, p0, Lcom/flurry/sdk/gl;->g:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lcom/flurry/sdk/gl;->f:I

    .line 107
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 108
    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/flurry/sdk/gl;->f:I

    .line 109
    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/gl;->f:I

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 9078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 10058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 113
    iget-wide v0, v0, Lcom/flurry/sdk/cs;->l:J

    .line 114
    const v2, 0x466a6000    # 15000.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 11078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 12058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 115
    iget-wide v0, v0, Lcom/flurry/sdk/cs;->m:J

    .line 118
    :cond_2
    long-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    .line 119
    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/gl;->f:I

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 124
    iget v1, p0, Lcom/flurry/sdk/gl;->i:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/flurry/sdk/gl;->i:F

    mul-float/2addr v1, p2

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_4

    .line 12094
    iget-boolean v0, v0, Lcom/flurry/sdk/gp;->i:Z

    .line 124
    if-nez v0, :cond_4

    .line 12162
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->e:Ljava/lang/String;

    const-string v2, "Reward granted: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12163
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 13098
    iput-boolean v3, v0, Lcom/flurry/sdk/gp;->i:Z

    .line 126
    sget-object v0, Lcom/flurry/sdk/bc;->N:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gl;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    :cond_5
    return-void

    .line 97
    :cond_6
    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/gl;->f:I

    .line 148
    invoke-super {p0}, Lcom/flurry/sdk/gm;->b()V

    .line 149
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/flurry/sdk/gm;->b(Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/flurry/sdk/gl;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/flurry/sdk/bc;->N:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gl;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 159
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Lcom/flurry/sdk/gm;->c()V

    .line 186
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video prepared suspendVideo."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public cleanupLayout()V
    .locals 4

    .prologue
    .line 199
    invoke-super {p0}, Lcom/flurry/sdk/gm;->cleanupLayout()V

    .line 200
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video prepared cleanupLayout."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/gl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method protected getViewParams()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 7118
    iget v0, v0, Lcom/flurry/sdk/gp;->j:I

    .line 86
    iput v0, p0, Lcom/flurry/sdk/gl;->f:I

    .line 88
    :cond_0
    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    return v0
.end method

.method public initLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 206
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    iget-object v1, p0, Lcom/flurry/sdk/gl;->a:Lcom/flurry/sdk/gu;

    .line 14288
    iget-object v1, v1, Lcom/flurry/sdk/gu;->d:Landroid/widget/RelativeLayout;

    .line 210
    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->showProgressDialog()V

    .line 212
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/flurry/sdk/gm;->setAutoPlay(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 14030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 140
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 141
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    :goto_0
    iput v0, p0, Lcom/flurry/sdk/gl;->f:I

    .line 143
    :cond_0
    return-void

    .line 141
    :cond_1
    iget v0, p0, Lcom/flurry/sdk/gl;->f:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method
