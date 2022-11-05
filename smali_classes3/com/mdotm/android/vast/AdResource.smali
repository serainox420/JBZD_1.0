.class public Lcom/mdotm/android/vast/AdResource;
.super Ljava/lang/Object;
.source "AdResource.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected cachedLocally:Z

.field protected delivery:I

.field protected height:I

.field protected resourceType:I

.field protected url:Ljava/lang/String;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelivery()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/mdotm/android/vast/AdResource;->delivery:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/mdotm/android/vast/AdResource;->height:I

    return v0
.end method

.method public getResourceType()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/mdotm/android/vast/AdResource;->resourceType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mdotm/android/vast/AdResource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/mdotm/android/vast/AdResource;->width:I

    return v0
.end method

.method public isCachedLocally()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/mdotm/android/vast/AdResource;->cachedLocally:Z

    return v0
.end method

.method public setCachedLocally(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/mdotm/android/vast/AdResource;->cachedLocally:Z

    .line 35
    return-void
.end method

.method public setDelivery(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/mdotm/android/vast/AdResource;->delivery:I

    .line 43
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/mdotm/android/vast/AdResource;->height:I

    .line 59
    return-void
.end method

.method public setResourceType(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/mdotm/android/vast/AdResource;->resourceType:I

    .line 71
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mdotm/android/vast/AdResource;->url:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/mdotm/android/vast/AdResource;->width:I

    .line 63
    return-void
.end method
