.class public Lcom/mdotm/android/model/MdotMAdResponse;
.super Ljava/lang/Object;
.source "MdotMAdResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xc31444ff6642717L


# instance fields
.field private Text:Ljava/lang/String;

.field private adType:I

.field private cachedLocally:Z

.field private companion:Lcom/mdotm/android/vast/Companion;

.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private imp_pixel:Ljava/lang/String;

.field private impression:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRequestForBannerAd:Z

.field private landingUrl:Ljava/lang/String;

.field private launchType:I

.field private originalImageUrl:Ljava/lang/String;

.field private resourceType:I

.field private status:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->adType:I

    return v0
.end method

.method public getCompanion()Lcom/mdotm/android/vast/Companion;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->companion:Lcom/mdotm/android/vast/Companion;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->height:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImp_pixel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->imp_pixel:Ljava/lang/String;

    return-object v0
.end method

.method public getImpression()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->impression:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->landingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchType()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->launchType:I

    return v0
.end method

.method public getOriginalImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->originalImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->resourceType:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->status:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->Text:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->width:I

    return v0
.end method

.method public isCachedLocally()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->cachedLocally:Z

    return v0
.end method

.method public isRequestForBannerAd()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mdotm/android/model/MdotMAdResponse;->isRequestForBannerAd:Z

    return v0
.end method

.method public setAdType(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->adType:I

    .line 53
    return-void
.end method

.method public setCachedLocally(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->cachedLocally:Z

    .line 105
    return-void
.end method

.method public setCompanion(Lcom/mdotm/android/vast/Companion;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->companion:Lcom/mdotm/android/vast/Companion;

    .line 133
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->height:I

    .line 97
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->imageUrl:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setImp_pixel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->imp_pixel:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setImpression(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->impression:Ljava/util/ArrayList;

    .line 140
    return-void
.end method

.method public setLandingUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->landingUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setLaunchType(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->launchType:I

    .line 113
    return-void
.end method

.method public setOriginalImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->originalImageUrl:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setRequestForBannerAd(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->isRequestForBannerAd:Z

    .line 37
    return-void
.end method

.method public setResourceType(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->resourceType:I

    .line 81
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->status:I

    .line 125
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->Text:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/mdotm/android/model/MdotMAdResponse;->width:I

    .line 89
    return-void
.end method
