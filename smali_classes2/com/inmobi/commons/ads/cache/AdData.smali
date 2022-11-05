.class public Lcom/inmobi/commons/ads/cache/AdData;
.super Ljava/lang/Object;
.source "AdData.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->a:J

    return-wide v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->c:J

    return-wide v0
.end method

.method public setAdId(J)V
    .locals 1

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->a:J

    .line 16
    return-void
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->e:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->d:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->c:J

    .line 32
    return-void
.end method
