.class public abstract Lcom/flurry/sdk/gj;
.super Lcom/flurry/sdk/gm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gj$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/flurry/sdk/gj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gj;->e:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gm;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    .line 30
    return-void
.end method

.method private getValueForAutoplayMacro()Z
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getVideoReplayCount()I

    move-result v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->h()Z

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(F)V
    .locals 7

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gu;

    if-nez v0, :cond_1

    .line 128
    :cond_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->f()Z

    move-result v1

    .line 115
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->j()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/sdk/gj;->d:Z

    .line 116
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 2186
    iget-object v0, v0, Lcom/flurry/sdk/au;->e:Lcom/flurry/sdk/gq;

    .line 117
    iget-boolean v2, p0, Lcom/flurry/sdk/gj;->d:Z

    iget v3, p0, Lcom/flurry/sdk/gj;->c:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/flurry/sdk/gq;->a(ZZIF)V

    .line 3034
    iget-object v0, v0, Lcom/flurry/sdk/gq;->b:Ljava/util/ArrayList;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gq$a;

    .line 121
    iget-boolean v3, p0, Lcom/flurry/sdk/gj;->d:Z

    iget v4, p0, Lcom/flurry/sdk/gj;->c:I

    invoke-virtual {v0, v1, v3, v4, p1}, Lcom/flurry/sdk/gq$a;->a(ZZIF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3114
    iget-object v0, v0, Lcom/flurry/sdk/gq$a;->a:Lcom/flurry/sdk/dn;

    iget v3, v0, Lcom/flurry/sdk/dn;->a:I

    .line 123
    if-nez v3, :cond_4

    sget-object v0, Lcom/flurry/sdk/bc;->L:Lcom/flurry/sdk/bc;

    .line 124
    :goto_2
    invoke-virtual {p0, v3}, Lcom/flurry/sdk/gj;->b(I)Ljava/util/Map;

    move-result-object v4

    .line 123
    invoke-virtual {p0, v0, v4}, Lcom/flurry/sdk/gj;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 125
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/sdk/gj;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BeaconTest: Video view event fired, adObj (type="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_4
    sget-object v0, Lcom/flurry/sdk/bc;->M:Lcom/flurry/sdk/bc;

    goto :goto_2
.end method

.method public abstract a(Lcom/flurry/sdk/gj$a;)V
.end method

.method protected final b(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    const-string v0, "vsa"

    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 147
    const-string v2, "va"

    .line 5154
    iget-boolean v0, v0, Lcom/flurry/sdk/gp;->l:Z

    .line 148
    if-eqz v0, :cond_3

    const-string v0, "1"

    .line 147
    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "vph"

    iget-object v2, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v2}, Lcom/flurry/sdk/gu;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "vpw"

    iget-object v2, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v2}, Lcom/flurry/sdk/gu;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v2, "ve"

    .line 153
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    .line 152
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v2, "vpi"

    .line 156
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/gj;->b:Z

    if-eqz v0, :cond_5

    :cond_0
    const-string v0, "1"

    .line 155
    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    const/4 v0, 0x1

    .line 158
    :goto_3
    const-string v2, "vm"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v2, "api"

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gu;

    .line 160
    invoke-virtual {v0}, Lcom/flurry/sdk/gu;->j()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "1"

    .line 159
    :goto_4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "atv"

    .line 163
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    .line 5186
    iget-object v2, v2, Lcom/flurry/sdk/au;->e:Lcom/flurry/sdk/gq;

    .line 6073
    iget v2, v2, Lcom/flurry/sdk/gq;->a:F

    .line 163
    float-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    if-lez p1, :cond_2

    .line 166
    const-string v0, "vt"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    return-object v1

    .line 148
    :cond_3
    const-string v0, "0"

    goto/16 :goto_0

    .line 153
    :cond_4
    const-string v0, "0"

    goto :goto_1

    .line 156
    :cond_5
    const-string v0, "2"

    goto :goto_2

    .line 157
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 160
    :cond_7
    const-string v0, "2"

    goto :goto_4
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method

.method public getVideoReplayCount()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 1146
    iget v0, v0, Lcom/flurry/sdk/gp;->k:I

    .line 77
    return v0
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method protected getViewParams()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public abstract h()Z
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method

.method public abstract n()V
.end method

.method public o()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public p()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 2134
    iget-boolean v0, v0, Lcom/flurry/sdk/gp;->n:Z

    .line 88
    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected final s()V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 4042
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/gp;->c:Z

    .line 134
    invoke-direct {p0}, Lcom/flurry/sdk/gj;->getValueForAutoplayMacro()Z

    move-result v1

    .line 4158
    iput-boolean v1, v0, Lcom/flurry/sdk/gp;->l:Z

    .line 135
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gj;->b(I)Ljava/util/Map;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/flurry/sdk/bc;->i:Lcom/flurry/sdk/bc;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gj;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;)V

    .line 138
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gj;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BeaconTest: Video start event fired, adObj: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " muted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gj;->a:Lcom/flurry/sdk/gu;

    invoke-virtual {v3}, Lcom/flurry/sdk/gu;->i()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public abstract setVideoUrl(Ljava/lang/String;)V
.end method

.method protected final t()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->c()Lcom/flurry/sdk/fr;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 183
    :goto_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v3

    invoke-interface {v3}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v3

    iget v3, v3, Lcom/flurry/sdk/cn;->g:I

    invoke-static {v3}, Lcom/flurry/sdk/ah;->a(I)Lcom/flurry/sdk/ah;

    move-result-object v3

    sget-object v4, Lcom/flurry/sdk/ah;->a:Lcom/flurry/sdk/ah;

    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ah;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 188
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0

    :cond_1
    move v2, v1

    .line 188
    goto :goto_1
.end method

.method protected final u()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public final v()V
    .locals 3

    .prologue
    .line 198
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 6251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 198
    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getAdObject()Lcom/flurry/sdk/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/gj;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 7251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 199
    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->d()V

    .line 200
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gj;->e:Ljava/lang/String;

    const-string v2, "ClearCache: Video cache cleared."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method
