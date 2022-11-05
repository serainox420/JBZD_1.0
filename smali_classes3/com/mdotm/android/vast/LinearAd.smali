.class public Lcom/mdotm/android/vast/LinearAd;
.super Lcom/mdotm/android/vast/BaseVastAd;
.source "LinearAd.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected adResource:Lcom/mdotm/android/vast/AdResource;

.field protected closeBtnLocation:Ljava/lang/String;

.field protected closeBtnSize:Ljava/lang/String;

.field protected counteroffset:Ljava/lang/String;

.field protected countersize:Ljava/lang/String;

.field protected counterstroke:Ljava/lang/String;

.field protected duration:Ljava/lang/String;

.field protected icon:Lcom/mdotm/android/vast/VastIcons;

.field protected skipOffset:Ljava/lang/String;

.field protected trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

.field protected videoClickTracking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected videoClicks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mdotm/android/vast/BaseVastAd;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->videoClicks:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->videoClickTracking:Ljava/util/ArrayList;

    .line 5
    return-void
.end method


# virtual methods
.method public getAdResource()Lcom/mdotm/android/vast/AdResource;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->adResource:Lcom/mdotm/android/vast/AdResource;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingEvents()Lcom/mdotm/android/vast/LinearAdTrackingEvents;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    return-object v0
.end method

.method public getVideoClickTrack()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->videoClickTracking:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoClicks()Ljava/util/ArrayList;
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
    .line 37
    iget-object v0, p0, Lcom/mdotm/android/vast/LinearAd;->videoClicks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAdResource(Lcom/mdotm/android/vast/AdResource;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mdotm/android/vast/LinearAd;->adResource:Lcom/mdotm/android/vast/AdResource;

    .line 61
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mdotm/android/vast/LinearAd;->duration:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTrackingEvents(Lcom/mdotm/android/vast/LinearAdTrackingEvents;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mdotm/android/vast/LinearAd;->trackingEvents:Lcom/mdotm/android/vast/LinearAdTrackingEvents;

    .line 53
    return-void
.end method

.method public setVideoClicks(Ljava/util/ArrayList;)V
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
    .line 56
    iput-object p1, p0, Lcom/mdotm/android/vast/LinearAd;->videoClicks:Ljava/util/ArrayList;

    .line 57
    return-void
.end method
