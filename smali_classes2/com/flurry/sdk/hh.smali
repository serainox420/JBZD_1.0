.class public final Lcom/flurry/sdk/hh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/flurry/sdk/r;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    .line 16
    iput-object p2, p0, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    .line 17
    iput-boolean p3, p0, Lcom/flurry/sdk/hh;->c:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/hh;->d:Z

    .line 19
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 51
    goto :goto_0

    .line 54
    :cond_3
    check-cast p1, Lcom/flurry/sdk/hh;

    .line 56
    iget-boolean v2, p0, Lcom/flurry/sdk/hh;->c:Z

    iget-boolean v3, p1, Lcom/flurry/sdk/hh;->c:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/flurry/sdk/hh;->d:Z

    iget-boolean v3, p1, Lcom/flurry/sdk/hh;->d:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    iget-object v3, p1, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    :goto_1
    move v0, v1

    .line 59
    goto :goto_0

    .line 58
    :cond_5
    iget-object v2, p1, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 65
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 66
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/flurry/sdk/hh;->c:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v3

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/flurry/sdk/hh;->d:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v2

    .line 68
    return v0

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0

    :cond_1
    move v0, v1

    .line 65
    goto :goto_1

    :cond_2
    move v0, v1

    .line 66
    goto :goto_2

    :cond_3
    move v2, v1

    .line 67
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fAdObjectId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    invoke-interface {v1}, Lcom/flurry/sdk/r;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLaunchUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fShouldCloseAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/hh;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fSendYCookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/hh;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
