.class public Lcom/inmobi/monetization/internal/imai/db/ClickData;
.super Ljava/lang/Object;
.source "ClickData.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/inmobi/monetization/internal/imai/IMAICore;->getRandomNumber()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setClickId(J)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setClickUrl(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setFollowRedirect(Z)V

    .line 21
    invoke-virtual {p0, p3}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setPingWv(Z)V

    .line 22
    invoke-virtual {p0, p4}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setRetryCount(I)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/monetization/internal/imai/db/ClickData;->setTimestamp(J)V

    .line 24
    return-void
.end method


# virtual methods
.method public getClickId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->a:J

    return-wide v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->d:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->f:J

    return-wide v0
.end method

.method public isFollowRedirects()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->e:Z

    return v0
.end method

.method public isPingWv()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->c:Z

    return v0
.end method

.method public setClickId(J)V
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->a:J

    .line 30
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFollowRedirect(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->e:Z

    .line 60
    return-void
.end method

.method public setPingWv(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->c:Z

    .line 48
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->d:I

    .line 54
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/imai/db/ClickData;->f:J

    .line 42
    return-void
.end method
