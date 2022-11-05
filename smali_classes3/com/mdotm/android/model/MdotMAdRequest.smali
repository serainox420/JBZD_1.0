.class public Lcom/mdotm/android/model/MdotMAdRequest;
.super Ljava/lang/Object;
.source "MdotMAdRequest.java"


# instance fields
.field private adRefreshInterval:I

.field private adSize:Ljava/lang/String;

.field private age:I

.field private appKey:Ljava/lang/String;

.field private enableCaching:Z

.field private ext:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private latitude:D

.field private loadInterstitial:Z

.field private longitude:D

.field private testMode:Ljava/lang/String;

.field private vidsupport:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->testMode:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->loadInterstitial:Z

    .line 20
    const-string v0, "1"

    iput-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->vidsupport:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->ext:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getAdSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->adSize:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->age:I

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->longitude:D

    return-wide v0
.end method

.method public isEnableCaching()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->enableCaching:Z

    return v0
.end method

.method public isTestMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->testMode:Ljava/lang/String;

    return-object v0
.end method

.method public setAdSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->adSize:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setAge(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->age:I

    .line 30
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->appKey:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setEnableCaching(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->enableCaching:Z

    .line 77
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->ext:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setGender(Lcom/mdotm/android/constants/MdotMGender;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/mdotm/android/constants/MdotMGender;->FEMALE:Lcom/mdotm/android/constants/MdotMGender;

    if-ne p1, v0, :cond_0

    .line 36
    const-string v0, "female"

    iput-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->gender:Ljava/lang/String;

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/mdotm/android/constants/MdotMGender;->MALE:Lcom/mdotm/android/constants/MdotMGender;

    if-ne p1, v0, :cond_1

    .line 38
    const-string v0, "male"

    iput-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->gender:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/mdotm/android/model/MdotMAdRequest;->gender:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->latitude:D

    .line 47
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->longitude:D

    .line 53
    return-void
.end method

.method public setTestMode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdRequest;->testMode:Ljava/lang/String;

    .line 86
    const-string v0, "0"

    if-ne p1, v0, :cond_0

    .line 87
    const/4 v0, 0x6

    sput v0, Lcom/mdotm/android/utils/MdotMConfiguration;->LOG_LEVEL:I

    .line 88
    :cond_0
    return-void
.end method
