.class public Lcom/loopme/request/AdTargetingData;
.super Ljava/lang/Object;
.source "AdTargetingData.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCustomParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loopme/request/CustomRequestParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mGender:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mYearOfBirth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/loopme/request/AdTargetingData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/request/AdTargetingData;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loopme/request/AdTargetingData;->mCustomParams:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/loopme/request/AdTargetingData;->mKeywords:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopme/request/AdTargetingData;->mYearOfBirth:I

    .line 24
    iput-object v1, p0, Lcom/loopme/request/AdTargetingData;->mGender:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/loopme/request/AdTargetingData;->mCustomParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    return-void
.end method

.method public getCustomParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/loopme/request/CustomRequestParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/loopme/request/AdTargetingData;->mCustomParams:Ljava/util/List;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/loopme/request/AdTargetingData;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/loopme/request/AdTargetingData;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getYob()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/loopme/request/AdTargetingData;->mYearOfBirth:I

    return v0
.end method

.method public setCustomParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/loopme/request/AdTargetingData;->mCustomParams:Ljava/util/List;

    new-instance v1, Lcom/loopme/request/CustomRequestParameter;

    invoke-direct {v1, p1, p2}, Lcom/loopme/request/CustomRequestParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "female"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "male"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    iput-object p1, p0, Lcom/loopme/request/AdTargetingData;->mGender:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_2
    sget-object v0, Lcom/loopme/request/AdTargetingData;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Wrong gender value"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/loopme/request/AdTargetingData;->mKeywords:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setYob(I)V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 39
    const/16 v1, 0x76c

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 40
    iput p1, p0, Lcom/loopme/request/AdTargetingData;->mYearOfBirth:I

    .line 42
    :cond_0
    return-void
.end method
