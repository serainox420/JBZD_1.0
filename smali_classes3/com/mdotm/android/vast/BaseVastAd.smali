.class public Lcom/mdotm/android/vast/BaseVastAd;
.super Ljava/lang/Object;
.source "BaseVastAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected adType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdType()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/mdotm/android/vast/BaseVastAd;->adType:I

    return v0
.end method

.method public setAdType(I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/mdotm/android/vast/BaseVastAd;->adType:I

    .line 22
    return-void
.end method
