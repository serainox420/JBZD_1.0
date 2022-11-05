.class public Lcom/smartadserver/android/library/ui/a/c/d;
.super Ljava/lang/Object;
.source "SASVector4f.java"


# instance fields
.field protected a:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    .line 41
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 42
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 43
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 44
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 45
    return-void

    .line 20
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 201
    return-void
.end method

.method public a(FFFF)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 264
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 265
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 266
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 267
    return-void
.end method

.method public a(Lcom/smartadserver/android/library/ui/a/c/d;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    iget-object v1, p1, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 65
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    iget-object v1, p1, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 66
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    iget-object v1, p1, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 67
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    iget-object v1, p1, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 68
    return-void
.end method

.method public b(Lcom/smartadserver/android/library/ui/a/c/d;)F
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v0, v0, v2

    iget-object v1, p1, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v1, v1, v3

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v1, v1, v4

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v1, v1, v5

    iget-object v2, p1, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 210
    return-void
.end method

.method public c(F)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 219
    return-void
.end method

.method public c()[F
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    return-object v0
.end method

.method public d()F
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public d(F)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 228
    return-void
.end method

.method public e()F
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public e(F)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 260
    return-void
.end method

.method public f()F
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public g()F
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public h()F
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " W:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a/c/d;->a:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
