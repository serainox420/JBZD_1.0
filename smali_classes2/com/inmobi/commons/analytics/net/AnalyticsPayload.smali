.class public Lcom/inmobi/commons/analytics/net/AnalyticsPayload;
.super Ljava/lang/Object;
.source "AnalyticsPayload.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->b:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getCompletePayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadSize()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->d:I

    return v0
.end method

.method public getTableIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->b:Ljava/util/List;

    return-object v0
.end method

.method public setCompletePayload(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->c:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPayloadSize(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/inmobi/commons/analytics/net/AnalyticsPayload;->d:I

    .line 18
    return-void
.end method
