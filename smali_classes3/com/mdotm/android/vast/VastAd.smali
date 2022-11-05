.class public Lcom/mdotm/android/vast/VastAd;
.super Ljava/lang/Object;
.source "VastAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static isNonLinear:Z = false

.field private static final serialVersionUID:J = -0x55cc945ec9fb0de2L


# instance fields
.field protected adSystem:Ljava/lang/String;

.field protected adTitle:Ljava/lang/String;

.field protected companion:Lcom/mdotm/android/vast/Companion;

.field protected description:Ljava/lang/String;

.field protected error:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected impression:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected liniearAndCompanion:Z

.field protected servey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:I

.field protected vastAds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/vast/BaseVastAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mdotm/android/vast/VastAd;->isNonLinear:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastAd;->servey:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastAd;->error:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Lcom/mdotm/android/vast/Companion;

    invoke-direct {v0}, Lcom/mdotm/android/vast/Companion;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/VastAd;->companion:Lcom/mdotm/android/vast/Companion;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/vast/VastAd;->liniearAndCompanion:Z

    .line 6
    return-void
.end method


# virtual methods
.method public getAdSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->adSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->adTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/util/ArrayList;
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
    .line 44
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->error:Ljava/util/ArrayList;

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
    .line 48
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServey()Ljava/util/ArrayList;
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
    .line 40
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->servey:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/mdotm/android/vast/VastAd;->status:I

    return v0
.end method

.method public getVastAds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/vast/BaseVastAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAdSystem(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->adSystem:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setAdTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->adTitle:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->description:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setError(Ljava/util/ArrayList;)V
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
    .line 72
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->error:Ljava/util/ArrayList;

    .line 73
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
    .line 76
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->impression:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public setServey(Ljava/util/ArrayList;)V
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
    .line 68
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->servey:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/mdotm/android/vast/VastAd;->status:I

    .line 89
    return-void
.end method

.method public setVastAds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdotm/android/vast/BaseVastAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mdotm/android/vast/VastAd;->vastAds:Ljava/util/ArrayList;

    .line 81
    return-void
.end method
