.class public Lcom/millennialmedia/UserData;
.super Ljava/lang/Object;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/UserData$Politics;,
        Lcom/millennialmedia/UserData$Marital;,
        Lcom/millennialmedia/UserData$Gender;,
        Lcom/millennialmedia/UserData$Ethnicity;,
        Lcom/millennialmedia/UserData$Education;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Date;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/millennialmedia/UserData;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/UserData;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/millennialmedia/UserData;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChildren()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/millennialmedia/UserData;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/millennialmedia/UserData;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getDma()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/millennialmedia/UserData;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getDob()Ljava/util/Date;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/millennialmedia/UserData;->l:Ljava/util/Date;

    return-object v0
.end method

.method public getEducation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/millennialmedia/UserData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getEthnicity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/millennialmedia/UserData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/millennialmedia/UserData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getIncome()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/millennialmedia/UserData;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/millennialmedia/UserData;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMarital()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/millennialmedia/UserData;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPolitics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/millennialmedia/UserData;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/millennialmedia/UserData;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/millennialmedia/UserData;->m:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(I)Lcom/millennialmedia/UserData;
    .locals 2

    .prologue
    .line 161
    if-ltz p1, :cond_0

    const/16 v0, 0x96

    if-le p1, v0, :cond_1

    .line 162
    :cond_0
    sget-object v0, Lcom/millennialmedia/UserData;->a:Ljava/lang/String;

    const-string v1, "Age must be at least 0 and no greater than 150"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-object p0

    .line 164
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/UserData;->b:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setChildren(I)Lcom/millennialmedia/UserData;
    .locals 2

    .prologue
    .line 188
    if-gez p1, :cond_0

    .line 189
    sget-object v0, Lcom/millennialmedia/UserData;->a:Ljava/lang/String;

    const-string v1, "Number of children must be greater than or equal to zero"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-object p0

    .line 191
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/UserData;->c:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/millennialmedia/UserData;->n:Ljava/lang/String;

    .line 448
    return-object p0
.end method

.method public setDma(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/millennialmedia/UserData;->o:Ljava/lang/String;

    .line 471
    return-object p0
.end method

.method public setDob(Ljava/util/Date;)Lcom/millennialmedia/UserData;
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/millennialmedia/UserData;->l:Ljava/util/Date;

    .line 402
    return-object p0
.end method

.method public setEducation(Lcom/millennialmedia/UserData$Education;)Lcom/millennialmedia/UserData;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p1, Lcom/millennialmedia/UserData$Education;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/UserData;->e:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public setEthnicity(Lcom/millennialmedia/UserData$Ethnicity;)Lcom/millennialmedia/UserData;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p1, Lcom/millennialmedia/UserData$Ethnicity;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/UserData;->f:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public setGender(Lcom/millennialmedia/UserData$Gender;)Lcom/millennialmedia/UserData;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p1, Lcom/millennialmedia/UserData$Gender;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/UserData;->g:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public setIncome(I)Lcom/millennialmedia/UserData;
    .locals 1

    .prologue
    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/UserData;->d:Ljava/lang/Integer;

    .line 287
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/millennialmedia/UserData;->h:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setMarital(Lcom/millennialmedia/UserData$Marital;)Lcom/millennialmedia/UserData;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p1, Lcom/millennialmedia/UserData$Marital;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/UserData;->i:Ljava/lang/String;

    .line 333
    return-object p0
.end method

.method public setPolitics(Lcom/millennialmedia/UserData$Politics;)Lcom/millennialmedia/UserData;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p1, Lcom/millennialmedia/UserData$Politics;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/UserData;->j:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/millennialmedia/UserData;->k:Ljava/lang/String;

    .line 379
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/millennialmedia/UserData;->m:Ljava/lang/String;

    .line 425
    return-object p0
.end method
